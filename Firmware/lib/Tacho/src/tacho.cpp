#include "tacho.h"

IRAM_ATTR void pwmcount();
volatile uint16_t pulses{0};

tacho::tacho(const uint8_t pin){
    tacho_pin(pin);
}

void tacho::tacho_pin(const uint8_t pin){
    _tacho_pin = pin;
    pinMode(_tacho_pin, INPUT_PULLUP);
    attachInterrupt(digitalPinToInterrupt(_tacho_pin), pwmcount, FALLING);
    timercount = millis();
}

uint16_t tacho::rpm() {
  uint16_t tijdteller = millis() - timercount;
  if (tijdteller > interval) {
    timercount = millis();
    calculatedrpm = pulses * 60 / 2;
    pulses = 0;
  } 
  return calculatedrpm;
}

void pwmcount() {
  pulses ++;
}
