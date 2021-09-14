#include "_keypad.h"
/*
String msg{};

    // Fills kpd.key[ ] array with up-to 10 active keys.
    // Returns true if there are ANY active keys.
    if (kpd.getKeys())
    {
        for (int i=0; i<LIST_MAX; i++)   // Scan the whole key list.
        {
            if ( kpd.key[i].stateChanged )   // Only find keys that have changed state.
            {
                switch (kpd.key[i].kstate) {  // Report active key state : IDLE, PRESSED, HOLD, or RELEASED
                    case PRESSED:
                    msg = " PRESSED.";
                break;
                    case HOLD:
                    msg = " HOLD.";
                break;
                    case RELEASED:
                    msg = " RELEASED.";
                break;
                    case IDLE:
                    msg = " IDLE.";
                }
                Serial.print("Key ");
                Serial.print(kpd.key[i].kchar);
                Serial.println(msg);
            }
        }
    }
}  // End loop

*/

_Keypad::_Keypad() : Keypad(makeKeymap(keys), rowpins, colpins, ROWS, COLS), PCF8574(PCF8574_Address, PCF8574_Interrupt_Pin, keyPressedOnPCF8574) {
    PCF8574::begin();
}

void _Keypad::pin_mode(byte pinNum, byte mode)
{
    PCF8574::pinMode(pinNum, mode);
}
void _Keypad::pin_write(byte pinNum, boolean level)
{
    PCF8574::digitalWrite(pinNum, level);
}
int _Keypad::pin_read(byte pinNum)
{
    return PCF8574::digitalRead(pinNum);
}

void keyPressedOnPCF8574()
{
    // Interrupt called (No Serial no read no wire in this function, and DEBUG disabled on PCF library)
    keyPressed = true;
}
