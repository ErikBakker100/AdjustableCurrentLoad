#pragma once

#include "Arduino.h"
#include <PCF8574.h>

const uint8_t PCF8574_Interrupt_Pin{16};
const uint8_t PCF8574_Address{0x20};

static bool keyPressed = false;

// Function interrupt
IRAM_ATTR void keyPressedOnPCF8574();

