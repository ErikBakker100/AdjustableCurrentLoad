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

_Keypad::Keypad() {
     pcf8574 = &PCF8574(PCF8574_Address, PCF8574_Interrupt_Pin, keyPressedOnPCF8574);
     pcf8574->begin();
}

void _Keypad::pin_mode(byte pinNum, byte mode);
{
    pcf8574->pinMode(pinNum, mode);
}
void _Keypad::pin_write(byte pinNum, boolean level);
{
    pcf8574->digitalWrite(pinNum, level);
}
int _Keypad::pin_read(byte pinNum);
{
    return pcf8574->digitalRead(pinNum);
}
