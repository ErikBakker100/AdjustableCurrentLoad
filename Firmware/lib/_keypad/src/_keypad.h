#pragma once

#include <Arduino.h>
#include <Keypad.h>
#include <PCF8574.h>

const byte ROWS = 4; //four rows
const byte COLS = 4; //three columns
char keys[ROWS][COLS] = {
{'1','2','3','U'},
{'4','5','6','D'},
{'7','8','9','*'},
{60,'0',62,'#'}
};
byte rowpins[ROWS] = {4, 3, 2, 1}; //connect to the row pinouts of the kpd
byte colpins[COLS] = {8, 7, 6, 5}; //connect to the column pinouts of the kpd

const uint8_t PCF8574_Interrupt_Pin{16};
const uint8_t PCF8574_Address{0x20};

static bool keyPressed = false;

// Function interrupt
IRAM_ATTR void keyPressedOnPCF8574();

class _Keypad : public Keypad, private PCF8574 {
public:
    void pin_mode(byte pinNum, byte mode);
    void pin_write(byte pinNum, boolean level);
    int pin_read(byte pinNum);
    _Keypad();
};