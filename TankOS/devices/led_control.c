#include "led_control.h"
#include <uthash/utlist.h>
#include <kernel/klib.h>

typedef struct LedList {
    Led led;
    BOOL enabled;
    uint8_t references;
    struct LedList *next;
} *LedList;

typedef struct _ControlledLeds {
    LedState state;
    LedList leds;
	uint8_t count;
    // TODO
} *_ControlledLeds;

typedef struct ControlledLedsList {
    ControlledLeds leds;
    struct ControlledLedsList *next;
} *ControlledLedsList;

#define LEDS Get(struct _ControlledLeds, leds)

static ControlledLedsList controlled_leds;
static LedList underlying_leds;

static LedList addNewLedsToList(LedGroup group) {
    // TODO
    /*
    kalloc(group->count * sizeof(struct LedList));

    for (uint8_t i = 0; i < group->count; i++) {
        if (!ledValid(group->leds[i]))
            return Invalid(ControlledLeds);
    }

    LedList ledListElement = kalloc(sizeof(struct LedList));
    listElement->leds = controlled;
    listElement->next = NULL;
    LL_APPEND(underlying_leds, ledListElement);

    if (ledListElement) free(ledListElement);
    */

    return NULL;
}

ControlledLeds newControlledLed(Led led) {
    struct LedGroup group = (struct LedGroup){ &led, 1 };
    ControlledLeds leds = newControlledLedGroup(&group);
    return leds;
}

ControlledLeds newControlledLedGroup(LedGroup group) {
    if (group == NULL) return Invalid(ControlledLeds);
    _ControlledLeds leds = kalloc(sizeof(struct _ControlledLeds));
    ControlledLedsList listElement = kalloc(sizeof(struct ControlledLedsList));
    LedList underlying;
    if (!leds || !listElement || !(underlying = addNewLedsToList(group))) {
        if (leds) free(leds);
        if (listElement) free(listElement);
        return Invalid(ControlledLeds);
    }

    leds->state = LedsDisabled;
    leds->leds = underlying;
    leds->count = group->count;

    ControlledLeds controlled = As(ControlledLeds, leds);
    listElement->leds = controlled;
    listElement->next = NULL;
    LL_APPEND(controlled_leds, listElement);
    addNewLedsToList(group);
    return controlled;
}

static ControlledLedsList find_list_element(ControlledLeds leds) {
    ControlledLedsList element = NULL;
    LL_FOREACH(controlled_leds, element) {
        if (Equal(element->leds, leds)) break;
    }
    return element;
}

static void cleanUnderlyingLeds(ControlledLeds leds) {
    // TODO iterate referenced LedLists, reduce reference-count
    // Then delete those with reference == 0
}

ControlledLeds destroyControlledLeds(ControlledLeds leds) {
    if (IsValid(leds)) {
        ControlledLedsList element = find_list_element(leds);
        if (element)
            LL_DELETE(controlled_leds, element);
        cleanUnderlyingLeds(leds);
        free(LEDS);
    }
    return Invalid(ControlledLeds);
}

BOOL controlledLedsValid(ControlledLeds leds) {
    if (!IsValid(leds)) return FALSE;
    // TODO check if LedList elements are all there
    if (!find_list_element(leds)) return FALSE;
    return TRUE;
}

void controlLeds(ControlledLeds leds, LedState state) {
    if (!IsValid(leds)) return;
    // TODO
}

LedState getControlledLedState(ControlledLeds leds) {
    if (!IsValid(leds)) return LedsDisabled;
    return LEDS->state;
}

void apply_led_effect(ControlledLeds leds) {
    // TODO
}

void led_control_tick() {
	ControlledLedsList element = NULL;
    LL_FOREACH(controlled_leds, element) {
        // First apply all currently active effects
        apply_led_effect(element->leds);
    }
    LedList led = NULL;
    LL_FOREACH(underlying_leds, led) {
        // Then set the actual leds based on the results
        setLed(led->led, led->enabled);
    }
}

// Can be linked to a real ISR.
void __vector_LED_CONTROL_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_LED_CONTROL_INTERRUPT() {
    led_control_tick();
}
