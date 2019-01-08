/*

=head1 NAME

RotaryEncoder_single.ino - print rotary encoder data on serial port and brighten/dimm led.

=head1 DESCRIPTION

When turning the rotary encoder clock wise will add-up to the counter
and increase the brightness of the led. Once maximum value is reached
the led will start blinking. On counterclockwise will decrease the
counter and once below zero will start to blink. Pushing the button
will light-up the led to maximum intensity. And print out counter
status to the serial port.

    pin 2 → A pin
    pin 4 → B pin
    pin 7 → Button pin
    pin 10 → led + resistor

See schematics and other image in current folder.

=cut

*/

#include <Arduino.h>
#include <RotaryEncoder.h>      // https://github.com/jozef/Arduino-RotaryEncoder

#define E_PIN_A 2
#define E_PIN_B 4
#define E_BTN_PIN 7
#define LED_PIN 10

RotaryEncoder rote(E_PIN_A,E_PIN_B,E_BTN_PIN,256/2);
uint8_t blink = 0;

void setup () {
    Serial.begin(9600);
    while (Serial.available()) { Serial.read(); }
    randomSeed(analogRead(0));

    rote.setup();
    rote.step = 8;
    rote.limit_min = -8;
    rote.limit_max = 256;

    pinMode(LED_PIN, OUTPUT);
}

void loop () {
    if (rote.btn_pressed()) {
        Serial.print("counter: "+String(rote.counter) + "("+ String(rote.counter/8)+")" + "  direction: "+String(rote.direction));
        if (rote.pin_btn) {
            Serial.print(" btn: "+String(rote.btn_pressed() ? "pressed" : "released"));
        }
        Serial.println();
    }

    blink = (blink > 2 ? 0 : blink + 1);
    int led_int = rote.counter;
    if (rote.btn_pressed()) {
        led_int = 255;
    } else if (led_int > 255) {
        led_int = blink ? 255 : 0;
    }
    else if (led_int < 0) {
        led_int = blink ? 0 : 8;
    }
    analogWrite(LED_PIN, led_int);

    delay(200);
}
