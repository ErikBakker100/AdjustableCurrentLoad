#pragma once

#include <Arduino.h>

#define TACHO_PIN 14

class tacho{
    public:
    tacho(const uint8_t pin = TACHO_PIN);
    void tacho_pin(const uint8_t pin);
    uint16_t rpm();
    private:
    uint8_t _tacho_pin;

    unsigned long timercount;
    const uint16_t interval{500};
    uint16_t calculatedrpm{0};
};