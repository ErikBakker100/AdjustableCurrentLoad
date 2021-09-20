#pragma once

#include "SSD1306Wire.h"        // legacy: #include "SSD1306.h"

void outputinfo(String info, SSD1306Wire *ssd1306)
{
  Serial.print(info);
//  ssd1306->drawString(1, 1, info);
//  ssd1306->display(); // // write the buffer to the display
}
