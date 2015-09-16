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
    LedList *leds;
	uint8_t count;
    struct _ControlledLeds *next;
} *_ControlledLeds;

#define LEDS Get(struct _ControlledLeds, leds)

_ControlledLeds controlled_leds;
LedList underlying_leds;

static void reduceRefcount(LedList element) {
    if (element->references > 0)
        element->references--;
    if (element->references == 0) {
        LL_DELETE(underlying_leds, element);
        free(element);
    }
}

static LedList *addNewLedsToList(LedGroup group) {
    for (uint8_t i = 0; i < group->count; i++) {
        if (!ledValid(group->leds[i]))
            return NULL;
    }
    LedList *list = kalloc(group->count * sizeof(LedList));
    if (!list) return NULL;
    for (int i = 0; i < group->count; i++) {
        Led led = group->leds[i];
        LedList existing = NULL;
        LL_FOREACH(underlying_leds, existing) {
            if (Equal(existing->led, led)) break;
        }
        if (existing == NULL) {
            existing = kalloc(sizeof(struct LedList));
            if (!existing) {
                // Cleanup all leds added so far...
                for (int j = 0; j < i; j++) {
                    reduceRefcount(list[j]);
                }
                free(list);
                return NULL;
            }
            existing->led = led;
            existing->next = NULL;
            existing->enabled = FALSE;
            existing->references = 0;
            LL_APPEND(underlying_leds, existing);
        }
        existing->references++;
        list[i] = existing;
    }
    return list;
}

ControlledLeds newControlledLed(Led led) {
    struct LedGroup group = (struct LedGroup){ &led, 1 };
    return newControlledLedGroup(&group);
}

ControlledLeds newControlledLedGroup(LedGroup group) {
    if (group == NULL) return Invalid(ControlledLeds);
    _ControlledLeds leds = kalloc(sizeof(struct _ControlledLeds));
    if (!leds) return Invalid(ControlledLeds);
    LedList *underlying = addNewLedsToList(group);
    if (!underlying) {
        free(leds);
        return Invalid(ControlledLeds);
    }
    leds->state = LedsDisabled;
    leds->leds = underlying;
    leds->count = group->count;
    leds->next = NULL;

    LL_APPEND(controlled_leds, leds);
    return As(ControlledLeds, leds);
}

static void cleanUnderlyingLeds(ControlledLeds leds) {
    LedList elem = NULL, tmp = NULL;
    LL_FOREACH_SAFE(underlying_leds, elem, tmp) {
        for (int i = 0; i < LEDS->count; i++) {
            if (elem == LEDS->leds[i]) {
                reduceRefcount(elem);
            }
        }
    }
}

ControlledLeds destroyControlledLeds(ControlledLeds leds) {
    if (IsValid(leds)) {
        LL_DELETE(controlled_leds, LEDS);
        cleanUnderlyingLeds(leds);
        free(LEDS);
    }
    return Invalid(ControlledLeds);
}

BOOL controlledLedsValid(ControlledLeds leds) {
    if (!IsValid(leds)) return FALSE;
    if (LEDS->leds == NULL) return FALSE;
    // Check if underlying Leds and the ControlledLeds itself are all registered.
    for (int i = 0; i < LEDS->count; i++) {
        LedList led = LEDS->leds[i];
        LedList i = NULL;
        LL_FOREACH(underlying_leds, i) {
            if (led == i) break;
        }
        if (i == NULL) return FALSE;
    }
    _ControlledLeds i = NULL;
    LL_FOREACH(controlled_leds, i) {
        if (LEDS == i) break;
    }
    return i != NULL;
}

void controlLeds(ControlledLeds leds, LedState state) {
    if (!IsValid(leds)) return;
    LEDS->state = state;
}

LedState getControlledLedsState(ControlledLeds leds) {
    if (!IsValid(leds)) return LedsDisabled;
    return LEDS->state;
}

void apply_led_effect(_ControlledLeds leds) {
    // TODO
}

void led_control_tick() {
    _ControlledLeds element = NULL;
    LL_FOREACH(controlled_leds, element) {
        // First apply all currently active effects
        apply_led_effect(element);
    }
    LedList led = NULL;
    LL_FOREACH(underlying_leds, led) {
        // Then set the actual leds based on the results
        setLed(led->led, led->enabled);
        // Reset value for next led_control_tick
        led->enabled = FALSE;
    }
}

// Can be linked to a real ISR.
void __vector_LED_CONTROL_INTERRUPT() INTERRUPT_FUNCTION;
void __vector_LED_CONTROL_INTERRUPT() {
    led_control_tick();
}
