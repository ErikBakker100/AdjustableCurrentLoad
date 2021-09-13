#pragma once

#include <Arduino.h>
#include <Keypad.h>

const byte ROWS = 4; //four rows
const byte COLS = 4; //three columns
char keys[ROWS][COLS] = {
{'1','2','3','U'},
{'4','5','6','D'},
{'7','8','9','*'},
{60,'0',62,'#'}
};
byte rowPins[ROWS] = {4, 3, 2, 1}; //connect to the row pinouts of the kpd
byte colPins[COLS] = {8, 7, 6, 5}; //connect to the column pinouts of the kpd

