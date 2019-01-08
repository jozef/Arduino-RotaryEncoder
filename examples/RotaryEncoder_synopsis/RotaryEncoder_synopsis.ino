/*

=head1 NAME

RotaryEncoder_synopsis.ino - print rotary encoder counter on serial port, reset it on button press

=head1 DESCRIPTION

Example from RotaryEncoder SYNOPSIS section.

Will print rotary counter on serial port. On button press counter will be set to zero.

=cut

*/

#include <Arduino.h>
#include <RotaryEncoder.h>      // https://github.com/jozef/Arduino-RotaryEncoder

const uint8_t pin_a = 2; const uint8_t pin_b = 4; const uint8_t pin_btn = 7;

RotaryEncoder rote(pin_a,pin_b,pin_btn);

void setup () {
    rote.setup();
    Serial.begin(9600);
}

void loop () {
    if (rote.btn_pressed()) {
        // switch is pressed
        Serial.println("switch pressed");
        rote.counter = 0;
    }
    if (rote.changed()) {
        Serial.println(rote.counter);
        if (rote.counter > 0) {
            // more steps CW then CCW
        }
    }
    delay(200);
}
