#include <Wire.h>
#include "I2CKeyPad.h"
#include "tacho.h"
#include "display.h"
#include "MCP4725.h"
#include <Adafruit_INA219.h>

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

// Addresses of the different devices
const uint8_t PCF8574_Interrupt_Pin{12};
const uint8_t PCF8574_Address{0x20}; 
const uint32_t I2CSPEED{1000000}; // I2C bus speed
const uint8_t FAN_OVERRIDE{16}; // Output which controls the FAN
const uint8_t MCP4725_Address{0x60};
const uint8_t INA219_Address{0x40};
const uint8_t SSD1306_address{0x3c};
// SSD1306 Display setup
SSD1306Wire display(SSD1306_address, SDA, SCL);
// PCF8574 / keypad setup
I2CKeyPad keyPad(PCF8574_Address);
char keys[] = "147L2580369RUDERNF";  // N = Nokey, F = Fail (eg >1 keys pressed)
volatile bool keyChange = false;  // volatile for IRQ var
bool Keypadconnected{false};
void IRAM_ATTR keyChanged() // we need IRAM_ATTR for interrupt routine on ESP12E
{ keyChange = true; }

// help functions setup
void check_if_exist_I2C();
void measurePolling(uint32_t speed);
uint32_t stop{0}; //Used for timing

// FAN setup
tacho FanSpeed();

// D/A converter (MCP4725) setup
MCP4725 MCP(MCP4725_Address);
bool MCP4725connected{false};
uint8_t output_value{0}; // the output level between - 4096, determines the load
// INA219 Current sensor setup
Adafruit_INA219 ina219;
bool INA219connected{false};

void setup()
{
  Serial.begin(115200);
  delay(200);
  Serial.print("Initializing ");
  Serial.println(__FILE__);
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(FAN_OVERRIDE, OUTPUT);
  digitalWrite(FAN_OVERRIDE, LOW); // timer gebruiken om na opstarten de FAN eventjes maximaal te laten draaien

  // NOTE: PCF8574 will generate an interrupt on key press and release.
  attachInterrupt(digitalPinToInterrupt(PCF8574_Interrupt_Pin), keyChanged, FALLING);
  keyChange = false;

  Wire.begin();
  Wire.setClock(I2CSPEED);
  check_if_exist_I2C();
// Initialize the display  
  display.init();
  display.resetDisplay();
  display.displayOn();
  display.clear();
  display.drawString(1, 1, "Start");
  display.display();

  if (keyPad.begin() == false)
  {
    Serial.print("Could not find keypad.\r\n");
  } else {
    Keypadconnected = true;
    Serial.print("Keypad OK.\r\n");
    }
  if (Keypadconnected) measurePolling(I2CSPEED);
  
  if (MCP.begin() == false)
  {
    outputinfo("Could not find D/A\r\n", &display);
  } else {
    MCP4725connected = true;
    MCP.setValue(output_value);
    outputinfo("D/A converter OK.\r\n", &display);
  }
  // Initialize the INA219.
  // By default the initialization will use the largest range (32V, 2A).  However you can call a setCalibration function to change this range (see comments).
  if (ina219.begin() == false) {
    outputinfo("Could not find Current sensor\r\n", &display);
  } else { 
    INA219connected = true;
    //ina219.setCalibration_32V_1A(); // To use a slightly lower 32V, 1A range (higher precision on amps)
    //ina219.setCalibration_16V_400mA(); // Or to use a lower 16V, 400mA range (higher precision on volts and amps):
    outputinfo("Current sensor OK.\r\n", &display);
  }
  
  Serial.print("Init finalised\r\n");
}

void loop()
{
   if(Keypadconnected) {
    if (keyChange)
    {
      uint8_t idx = keyPad.getKey();
      // only after keychange is handled it is time reset the flag
      keyChange = false;
      if (idx != 16)
      {
        if (keys[idx] == 'U') {
          if (MCP4725connected) {
            output_value += 500;
            output_value &= 0xFFF;
            MCP.setValue(output_value);
          }
        }
        if (keys[idx] == 'D') {
          if (MCP4725connected) {
            output_value -= 500;
            output_value &= 0xFFF;
            MCP.setValue(output_value);
          }
        }
      } else {
        Serial.print("release\r\n");
      }
      Serial.printf("Key %c, output_value %d\r\n", keys[idx], output_value);
    }
  }
  //INA29 Test
  if (INA219connected) {
    if(millis()-stop > 500) {
      stop = millis();
      float shuntvoltage = 0;
      float busvoltage = 0;
      float current_mA = 0;
      float loadvoltage = 0;
      float power_mW = 0;

      shuntvoltage = ina219.getShuntVoltage_mV();
      busvoltage = ina219.getBusVoltage_V();
      current_mA = ina219.getCurrent_mA();
      power_mW = ina219.getPower_mW();
      loadvoltage = busvoltage + (shuntvoltage / 1000);
      
      Serial.print("Bus Voltage:   "); Serial.print(busvoltage); Serial.println(" V");
      Serial.print("Shunt Voltage: "); Serial.print(shuntvoltage); Serial.println(" mV");
      Serial.print("Load Voltage:  "); Serial.print(loadvoltage); Serial.println(" V");
      Serial.print("Current:       "); Serial.print(current_mA); Serial.println(" mA");
      Serial.print("Power:         "); Serial.print(power_mW); Serial.println(" mW");
      Serial.println("");
    }
  }
}

void measurePolling(uint32_t speed)
{
  Serial.print("Measuring time to scan the keypad in micro seconds\r\n");
  Serial.print("Freq \tkey \ttime\r\n");
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
    Serial.print(String(clock));
    Serial.print("\t");
    Serial.print(String(idx));
    Serial.print("\t");
    Serial.print(String(stop - start)+"\r\n");
    delay(10);
  }
  Wire.setClock(I2CSPEED);
}

void check_if_exist_I2C() {
  byte error, address;
  int nDevices {0};
  Serial.print("Device(s) found at address(es) : \r\n");
  for (address = 1; address < 127; address++ )  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    char hexdecimalnum [4]{0,0,0,0};
    itoa(address, hexdecimalnum, 16);
    if (error == 0){
      Serial.print(String(hexdecimalnum) + "\r\n");
      nDevices++;
    } else if (error == 4) {
      Serial.print("Unknow error at address 0x");
      Serial.print(String(hexdecimalnum) + "\r\n");
    }
  } //for loop
  if (nDevices == 0) Serial.print("No I2C devices found\r\n");
}

// -- END OF FILE --