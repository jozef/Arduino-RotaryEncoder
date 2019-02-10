/*

=head1 NAME

RotaryEncoder_double.ino - two rotary encoders brighten/dimm 2 leds

=head1 DESCRIPTION

When turning the rotary encoder clock wise will add-up to the counter
and increase the brightness of the led. Pushing the button
will light-up the led to maximum intensity and print out counter
status to the serial port.

rotary encoder 1:

    pin 2 → A pin
    pin 4 → B pin
    pin 7 → Button pin
    pin 10 → led + resistor

rotary encoder 2:

    pin 3 → A pin
    pin 5 → B pin
    pin 8 → Button pin
    pin 11 → led + resistor

=head1 HARDWARE

See KiCad schematics and image in F<examples/RotaryEncoder_single/> folder.

=cut

*/

#include <Arduino.h>
#include <RotaryEncoder.h>      // https://github.com/jozef/Arduino-RotaryEncoder

#define E1_PIN_A 2
#define E1_PIN_B 4
#define E1_BTN_PIN 7
#define LED1_PIN 10

#define E2_PIN_A 3
#define E2_PIN_B 5
#define E2_BTN_PIN 8
#define LED2_PIN 11

RotaryEncoder rote1(E1_PIN_A,E1_PIN_B,E1_BTN_PIN,256/2);
RotaryEncoder rote2(E2_PIN_A,E2_PIN_B,E2_BTN_PIN,256/2);
uint8_t blink = 0;

void setup () {
    Serial.begin(9600);
    while (Serial.available()) { Serial.read(); }

    rote_setup(&rote1, LED1_PIN);
    rote_setup(&rote2, LED2_PIN);
}

void loop () {
    rote_read(&rote1, 1, LED1_PIN);
    rote_read(&rote2, 2, LED2_PIN);
    delay(200);
}

void rote_setup(RotaryEncoder *rote, uint8_t led_pin) {
    rote->setup();
    rote->step = 8;
    rote->limit_min = -8;
    rote->limit_max = 256;
    pinMode(led_pin, OUTPUT);
}

void rote_read(RotaryEncoder *rote, uint8_t eid, uint8_t led_pin) {
    if (rote->btn_pressed()) {
        Serial.print("encoder: "+String(eid)+" counter: "+String(rote->counter) + "("+ String(rote->counter/8)+")" + "  direction: "+String(rote->direction));
        if (rote->pin_btn) {
            Serial.print(" btn: "+String(rote->btn_pressed() ? "pressed" : "released"));
        }
        Serial.println();
    }

    int led_int = rote->counter;
    if (rote->btn_pressed()) {
        led_int = 255;
    } else if (led_int > 255) {
        led_int = 255;
    }
    else if (led_int < 0) {
        led_int = 0;
    }
    analogWrite(led_pin, led_int);
}
