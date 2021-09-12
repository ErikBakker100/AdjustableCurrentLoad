#include <Arduino.h>
#include "tacho.h"
#include "display.h"
#include "_keypad.h"

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
Keypad keypad = Keypad(makeKeymap(keys), rowPins, colPins, ROWS, COLS );

void setup() {
  // put your setup code here, to run once:
  pinMode(LED_BUILTIN, OUTPUT);
  pinMode(FAN_OVERRIDE, OUTPUT);
  digitalWrite(FAN_OVERRIDE, LOW);
  Display();
  outputinfo("Initilizing\r\n");
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(LED_BUILTIN, HIGH); // turn the LED on (HIGH is the voltage level)
  delay(500);                     // wait
  digitalWrite(LED_BUILTIN, LOW);  // turn the LED off by making the voltage LOW
  delay(500);                     // wait
  outputinfo(String(FanSpeed.rpm())+"\r");
  char key = keypad.getKey();
}