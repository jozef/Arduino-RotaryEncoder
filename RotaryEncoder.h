/* VERSION 0.01; 2018-01-08; see below for description and documentation */
#ifndef RotaryEncoder_h
#define RotaryEncoder_h

#include <stdint.h>

class RotaryEncoder {
    public:
        volatile int counter;
        volatile int8_t direction;
        int limit_min;
        int limit_max;
        int step;
        uint8_t pin_a;
        uint8_t pin_b;
        uint8_t pin_btn;
        RotaryEncoder* _next_roten;

        RotaryEncoder(uint8_t a, uint8_t b, uint8_t btn = 0, int init_counter = 0);
        ~RotaryEncoder();
        void setup();
        bool update();
        bool changed();
        bool btn_pressed();
    private:
        volatile uint8_t _last_a;
        int _last_counter;
        void _int_do_update();
};

#endif

/*

=head1 NAME

RotaryEncoder.h/cpp - read/decode/count rotary encoder pulses

=head1 SYNOPSIS

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

=head1 DESCRIPTION

Arduino class/library to read-out one or more rotary encoders.

See F<examples/> folder for schematics and example usage.

=head2 PROPERTIES

int counter:

number of rotation steps

int8_t direction:

-1 for counter clockwise, 0 for one step reversed to the previous direction or 1 for clockwise turning.

int limit_min; int limit_max:

minimum and maximum value that counter can have. if both are the same value, no limit.

int step:

how much is a single rotational step. by default 1.

uint8_t pin_a:

Arduino pin on which encoder pin A is connected. If the pin supports
interrupt, update() function is called automatically.

uint8_t pin_b:

Arduino pin on which encoder pin B is connected.

uint8_t pin_btn:

Arduino pin on which encoder push button is connected.

=head2 METHODS

RotaryEncoder(uint8_t a, uint8_t b, uint8_t btn = 0, int init_counter = 0):

Constructor, a and b pins are required. Button pin and initial value
for counter optional.

void setup():

Will initiate pins and interrupts.

bool update():

Needs to be called as "fast as possible" if Arduino pin connected to encoder pin A is not on an interrupt pin
to update state and do the counting.

bool changed():

Set to true if there was any change to the counter since the last call
of this function.

bool btn_pressed():

Returns true/false if button is pressed.

=head1 EXAMPLES

=head2 examples/RotaryEncoder_single/RotaryEncoder_synopsis.ino

Code from L<SYNOPSIS> section.

=head2 examples/RotaryEncoder_single/RotaryEncoder_single.ino

Print rotary counted value on serial port and light up led.
Brighten/Dimm led based on rotary counter.

=head1 INSTALL

    git clone https://github.com/jozef/Arduino-RotaryEncoder.git sketchbook/libraries/RotaryEncoder

=head1 LICENSE

This is free software, licensed under the MIT License.

=head1 AUTHOR

    Jozef Kutej

=cut

*/
