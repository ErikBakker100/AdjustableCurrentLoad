#pragma once

#include <Wire.h>
#include "SSD1306Ascii.h"
#include "SSD1306AsciiWire.h"

#define DISPLAYADDRESS 0x3C //Undef to exclude display
#define OLED_RESET 100
#define SCL D1
#define SDA D2

// Initialize the OLED display
// I2C Address  0x3C
// D1 -> SDA
// D2 -> SCL

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

#ifdef DISPLAYADDRESS
  SSD1306AsciiWire display;
#endif //DISPLAYADDRESS

void Display() {
#ifdef DISPLAYADDRESS
  Wire.begin(SDA, SCL);
  Wire.setClock(1000000L);
  display.begin(&Adafruit128x64, DISPLAYADDRESS);
  display.setFont(System5x7);
  display.clear();
  display.setScrollMode(SCROLL_MODE_AUTO);
#endif //DISPLAYADDRESS
}

void outputinfo(String info)
{
  Serial.print(info);
  #ifdef DISPLAYADDRESS
    uint8_t width {display.displayWidth()};
    for (uint8_t x = 0; x < info.length(); ++x) {
      if (display.col() + display.charWidth(info.charAt(x)) > width) { 
        display.print("\r\n");
      }
      display.print(info.charAt(x));
    }
  #endif //DISPLAYADDRESS
}
