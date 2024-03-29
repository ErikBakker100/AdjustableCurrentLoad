//
//    FILE: I2CKeypad_interrupts_1.ino
//  AUTHOR: Rob Tillaart
// VERSION: 0.1.0
// PURPOSE: demo interrupt checking keyPressed
//     URL: https://github.com/RobTillaart/I2CKeyPad
//
//  HISTORY:
//  2021-05-08  0.1.0 initial version

//  interrupts are supported since version 0.2.1
//  this sketch show usage and some comparison with polling.

//  notes
//  an interrupt takes less than 10 micros() on an UNO source - https://forum.arduino.cc/t/how-fast-can-i-interrupt/25884/6
//  At I2C 100KHz one polling takes 472 micros() on an UNO this is at least 50x longer than handling a single interrupt.
//  Given that the interrupt is executed once per press/release and polling at e.g 10Hz (to stay reactive) adds up both in CPU time used and also in occupation of the I2C bus.
//
//  The PCF8574 will generate an irq both on press and release. So this code reads the keypad on both signals!
//  Note: depending on keypad used some bouncing may occur (saw it only during release) can be solved by tracking lastinterrupt in the ISR routine however it is more efficient
//  to reset the flag only after the keypress is handled.
//
// Note: multiple keypresses are not queued.

#include "Wire.h"
#include "I2CKeyPad.h"

const uint8_t KEYPAD_ADDRESS = 0x20;
I2CKeyPad keyPad(KEYPAD_ADDRESS);
char keys[] = "147L2580369RUDERNF";  // N = Nokey, F = Fail (eg >1 keys pressed)

// volatile for IRQ var
volatile bool keyChange = false;

// IRAM_ATTR for interrupt routine
void IRAM_ATTR keyChanged()
{
  keyChange = true;
}

void measurePolling();

void setup()
{
  Serial.begin(115200);
  Serial.println(__FILE__);


  // NOTE: PCF8574 will generate an interrupt on key press and release.
  attachInterrupt(digitalPinToInterrupt(12), keyChanged, FALLING);
  keyChange = false;

  Wire.begin();
  if (keyPad.begin() == false)
  {
    Serial.println("\nERROR: cannot communicate to keypad.\nPlease reboot.\n");
    while (1);
  }

  measurePolling();

  Wire.setClock(100000);
}


void loop()
{
  if (keyChange)
  {
    uint8_t idx = keyPad.getKey();
    // only after keychange is handled it is time reset the flag
    keyChange = false;
    if (idx != 16)
    {
      Serial.print("press: ");
      Serial.println(keys[idx]);
    }
    else
    {
      Serial.println("release");
    }

  }
}


void measurePolling()
{
  // measure time to check isPressed() by polling.

  //  CLOCK      TIME (us)
  //  ---------------------
  //  100K       472
  //  200K       268
  //  300K       200
  //  400K       168
  //  500K       152
  //  600K       136
  //  700K       124
  //  800K       error
  for (uint32_t clock = 100000; clock <= 800000; clock += 100000)
  {
    Wire.setClock(clock);
    for (int i = 0; i < 1; i++)
    {
      // reference time for keyPressed check UNO ~
      uint32_t start = micros();
      uint8_t idx = keyPad.isPressed();
      uint32_t stop = micros();

      Serial.print(clock);
      Serial.print("\t");
      Serial.print(idx);
      Serial.print("\t");
      Serial.print(keys[idx]);
      Serial.print("\t");
      Serial.println(stop - start);
      delay(10);
    }
  }
}

// -- END OF FILE --