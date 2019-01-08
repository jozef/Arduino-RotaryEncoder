/* see README or RotaryEncoder.h for documentation */

#include <RotaryEncoder.h>
#include <Arduino.h>
#include <stdint.h>

RotaryEncoder* _first_roten = nullptr;

RotaryEncoder::RotaryEncoder(uint8_t a, uint8_t b, uint8_t btn, int init_counter)
    : pin_a(a), pin_b(b), pin_btn(btn), counter(init_counter) {
    direction = 0;
    limit_min = 0;
    limit_max = 0;
    step = 1;
    _last_counter = counter;
    _next_roten = nullptr;
}

RotaryEncoder::~RotaryEncoder() {
    RotaryEncoder** cur_roten_ptr = &_first_roten;
    while (*cur_roten_ptr != nullptr) {
        if (*cur_roten_ptr == this) {
            *cur_roten_ptr = (*cur_roten_ptr)->_next_roten;
            break;
        }
    }
}

void _RotaryEncoder_int_do_update() {
    RotaryEncoder* cur_roten = _first_roten;
    while (cur_roten != nullptr) {
        cur_roten->update();
        cur_roten = cur_roten->_next_roten;
    }
}

void RotaryEncoder::setup() {
    _next_roten = _first_roten;
    _first_roten = this;
    pinMode(pin_a, INPUT_PULLUP);
    pinMode(pin_b, INPUT_PULLUP);
    if (pin_btn) {
        pinMode(pin_btn, INPUT_PULLUP);
    }
    _last_a = digitalRead(pin_a);

    if (digitalPinToInterrupt(pin_btn) != NOT_AN_INTERRUPT) {
        attachInterrupt(digitalPinToInterrupt(pin_btn), _RotaryEncoder_int_do_update, CHANGE);
    }
    if (digitalPinToInterrupt(pin_a) != NOT_AN_INTERRUPT) {
        attachInterrupt(digitalPinToInterrupt(pin_a), _RotaryEncoder_int_do_update, CHANGE);
    }
}

bool RotaryEncoder::changed() {
    if (_last_counter != counter) {
        _last_counter = counter;
        return true;
    }
    return false;
}

bool RotaryEncoder::update() {
    uint8_t cur_a = digitalRead(pin_a);
    bool changed = false;
    if (_last_a != cur_a) {
        if (!cur_a) {
            if (digitalRead(pin_b) != cur_a) {
                if (direction <= 0) {
                    direction++;
                }
                counter += step;
            }
            else {
                if (direction >= 0) {
                    direction--;
                }
                counter -= step;
            }
            if (limit_min != limit_max) {
                if (counter < limit_min) {
                    counter = limit_min;
                }
                else if (counter > limit_max) {
                    counter = limit_max;
                }
            }
            changed = true;
        }
        _last_a = cur_a;
    }
    return changed;
}

bool RotaryEncoder::btn_pressed() {
    if (!pin_btn) {
        return false;
    }
    return !digitalRead(pin_btn);
}
