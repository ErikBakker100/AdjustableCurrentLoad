#include <Arduino.h>
#include "tacho.h"
#include "display.h"
#include "_keypad.h"
#include "_pcf8574.h"

/*
* Nodemcu board : pin number is equal to GPIO
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

#define FAN_OVERRIDE 12
tacho FanSpeed;
PCF8574 pcf8574(PCF8574_Address, PCF8574_Interrupt_Pin, keyPressedOnPCF8574);
Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void check_if_exist_I2C();

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(FAN_OVERRIDE, OUTPUT);
  digitalWrite(FAN_OVERRIDE, LOW);
  Display();
  outputinfo("Initilizing\r\n");
	Serial.begin(115200);
  check_if_exist_I2C();
  pcf8574.pinMode(P0, INPUT);
  pcf8574.pinMode(P1, INPUT);
  pcf8574.pinMode(P2, INPUT);
  pcf8574.pinMode(P3, INPUT);
  pcf8574.pinMode(P4, INPUT);
  pcf8574.pinMode(P5, INPUT);
  pcf8574.pinMode(P6, INPUT);
  pcf8574.pinMode(P7, INPUT);
  if(pcf8574.begin()) {outputinfo("pcf8574 OK\r\n");}
  else {outputinfo("pcf8574 FAULTY");}
  outputinfo("Init finalised\r\n");
  }

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(LED_BUILTIN, HIGH); // turn the LED on (HIGH is the voltage level)
  delay(500);                     // wait
  digitalWrite(LED_BUILTIN, LOW);  // turn the LED off by making the voltage LOW
  delay(500);                     // wait
//  outputinfo(String("Fan speed : "+ FanSpeed.rpm())+"rpm\r");
//  char key = keypad.getKey();
  PCF8574::DigitalInput di = pcf8574.digitalReadAll();
//  char lees[9]{di.p0, di.p1, di.p2, di.p3, di.p4, di.p5, di.p6, di.p7, 0};
//  outputinfo(String(lees)+"\r");
 		Serial.print("READ VALUE FROM PCF P1: ");
		Serial.print(di.p0);
		Serial.print("-");
		Serial.print(di.p1);
		Serial.print("-");
		Serial.print(di.p2);
		Serial.print("-");
		Serial.print(di.p3);
		Serial.print("-");
		Serial.print(di.p4);
		Serial.print("-");
		Serial.print(di.p5);
		Serial.print("-");
		Serial.print(di.p6);
		Serial.print("-");
		Serial.println(di.p7);
  if (keyPressed){
    keyPressed = false;
    outputinfo("KEY\r\n");
  }
}

void check_if_exist_I2C() {
  byte error, address;
  int nDevices;
  nDevices = 0;
  for (address = 1; address < 127; address++ )  {
    // The i2c_scanner uses the return value of
    // the Write.endTransmisstion to see if
    // a device did acknowledge to the address.
    Wire.beginTransmission(address);
    error = Wire.endTransmission();
    char hexdecimalnum [4]{0,0,0,0};
    itoa(address, hexdecimalnum, 16);
    if (error == 0){
      outputinfo("Found at address ");
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
