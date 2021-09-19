#include "Wire.h"
#include "I2CKeyPad.h"
#include "tacho.h"
#include "display.h"

/*
* pin number is equal to GPIO
* pin 1 = GPIO1 = TX
* pin 2 = GPIO2 = D4
* pin 3 = GPIO3 = RX
* pin 4 = GPIO4 = D2
* pin 5 = GPIO5 = D1
* pin 12 = GPIO12 = D6
* pin 13 = GPIO13 = D7
* pin 14 = GPIO14 = D5
* pin 15 = GPIO15 = D8
* pin 16 = GPIO16 = D0
*/

// declare variables for PCF8574 / keypad
const uint8_t PCF8574_Interrupt_Pin{12};
const uint8_t PCF8574_Address{0x20};
I2CKeyPad keyPad(PCF8574_Address);
char keys[] = "147L2580369RUDERNF";  // N = Nokey, F = Fail (eg >1 keys pressed)
volatile bool keyChange = false;  // volatile for IRQ var

// IRAM_ATTR for interrupt routine
void IRAM_ATTR keyChanged()
{
  keyChange = true;
}

// declare help functions
const uint32_t I2cspeed{1000000};
void check_if_exist_I2C();
void measurePolling(uint32_t speed);

// declare FAN values
const uint8_t FAN_OVERRIDE {16};
tacho FanSpeed();

void setup()
{
  Serial.begin(115200);
  while( !Serial ){ /*wait*/ }
  delay(50);
  Serial.print("Initializing\r\n");
  Serial.println(__FILE__);
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(FAN_OVERRIDE, OUTPUT);
  digitalWrite(FAN_OVERRIDE, LOW);

  // NOTE: PCF8574 will generate an interrupt on key press and release.
  attachInterrupt(digitalPinToInterrupt(PCF8574_Interrupt_Pin), keyChanged, FALLING);
  keyChange = false;

  Wire.begin();
  Wire.setClock(I2cspeed);
  Display();
  check_if_exist_I2C();
  if (keyPad.begin() == false)
  {
    Serial.println("\nERROR: cannot communicate to keypad.\nPlease reboot.\n");
    while (1);
  }
  measurePolling(I2cspeed);

  Serial.println("Init finalised\r\n");
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
      outputinfo("pressed: ");
      outputinfo(String(keys[idx])+"\r\n");
    }
    else
    {
      outputinfo("release\r\n");
    }
  }
}

void measurePolling(uint32_t speed)
{
  outputinfo("Measuring time to scan the keypad in micro seconds\r\n");
  outputinfo("Freq \tkey \ttime\r\n");
  // measure time to check isPressed() by polling.

  //  CLOCK      TIME (us)
  //  ---------------------
  //  100K       570
  //  200K       276
  //  300K       171
  //  400K       132
  //  500K       128
  //  600K       132
  //  700K       128
  //  800K       132
  //  900K       128
  //  1M         132
  
  for (uint32_t clock = 100000; clock <= 1000000; clock += 100000)
  {
    Wire.setClock(clock);
    // reference time for keyPressed check UNO ~
    uint32_t start = micros();
    uint8_t idx = keyPad.isPressed();
    uint32_t stop = micros();
    outputinfo(String(clock));
    outputinfo("\t");
    outputinfo(String(idx));
    outputinfo("\t");
    outputinfo(String(stop - start)+"\r\n");
    delay(10);
  }
  Wire.setClock(I2cspeed);
}

void check_if_exist_I2C() {
  byte error, address;
  int nDevices {0};
  outputinfo("Device(s) found at address(es) : \r\n");
  for (address = 1; address < 127; address++ )  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    char hexdecimalnum [4]{0,0,0,0};
    itoa(address, hexdecimalnum, 16);
    if (error == 0){
      outputinfo(String(hexdecimalnum) + "\r\n");
      nDevices++;
    } else if (error == 4) {
      outputinfo("Unknow error at address 0x");
      outputinfo(String(hexdecimalnum) + "\r\n");
    }
  } //for loop
  if (nDevices == 0)
    outputinfo("No I2C devices found\r\n");
}

// -- END OF FILE --