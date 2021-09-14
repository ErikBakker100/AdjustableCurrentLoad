#pragma once

#include <Arduino.h>
#include <Keypad.h>
#include <PCF8574.h>

static bool keyPressed = false;

// Function interrupt
IRAM_ATTR void keyPressedOnPCF8574();

class _Keypad : public Keypad, public PCF8574 {
public:
    void pin_mode(byte pinNum, byte mode);
    void pin_write(byte pinNum, boolean level);
    int pin_read(byte pinNum);
    _Keypad(char *, byte *, byte *, byte, byte, uint8_t, uint8_t);
};