
#include <mocks/process.h>

void setUp() {

    init_mock_process();

}

void tearDown() {

    destroy_mock_process();

}

ProcessBase schedule(BOOL fromInterrupt) {
    return Invalid(ProcessBase);
}
