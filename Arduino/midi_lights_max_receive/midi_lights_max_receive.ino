// FastLED Library Definitions
#include "FastLED.h"
#include <Adafruit_NeoPixel.h>
#define DATA_PIN    6
#define LED_TYPE    WS2812B
#define COLOR_ORDER GRB
#define NUM_LEDS    20
#define BRIGHTNESS  50
CRGB leds[NUM_LEDS];

#include "MIDIUSB.h"

String myString;
Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, DATA_PIN, NEO_GRB + NEO_KHZ400);

// Use modulo to assign note name based on the MIDI note that is received
const char* pitch_name(byte pitch) {
  static const char* names[] = {"C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"};
  return names[pitch % 12];
}

// Use modulo to assign an HSV color hue value based on the MIDI note that is received
int colors[] = {0, 21, 42, 63, 84, 105, 126, 147, 168, 189, 210, 231};
int pitch_color(byte pitch) {
  return colors[pitch % 12];
}

// First parameter is the event type (0x09 = note on, 0x08 = note off).
// Second parameter is note-on/note-off, combined with the channel.
// Channel can be anything between 0-15. Typically reported to the user as 1-16.
// Third parameter is the note number (48 = middle C).
// Fourth parameter is the velocity (64 = normal, 127 = fastest).

// This is what we do when we get 'noteOn' MIDI instruction
void noteOn(byte channel, byte pitch, byte velocity) {

  float pixelMap = map(pitch, 24, 96, 0, 19);                 // since we only have 20 LEDs, we map the possible MIDI notes to this available range
  int pixelMapRounded = round(pixelMap);                      // Make sure the mapped values are integers
  leds[pixelMapRounded] = CHSV(pitch_color(pitch), 255, 255); // Turn on the LEDs that were mapped from the pitch after we receive noteOn instruction
  // Map a color to the MIDI note from the colors array
//  Serial.print("Receive Note On: ");
//  Serial.print("note=");
//  Serial.print(pitch);
//  Serial.print(", ch=");
//  Serial.print(channel);
//  Serial.print(", vel=");
//  Serial.print(velocity);
//  Serial.print(", color=");
//  Serial.print(pitch_color(pitch));
//  Serial.print(", pixelMapRounded=");
//  Serial.print(pixelMapRounded);
//  Serial.println("");

Serial.print(pitch-12);
Serial.print(" ");
Serial.print(pitch);
Serial.print(" ");
Serial.print(pitch+12);
Serial.print(" ");
Serial.print(1);
Serial.print(" ");
  Serial.print(pixelMapRounded);
  Serial.print(" ");
  Serial.print(pitch_color(pitch));
Serial.println();

  midiEventPacket_t noteOn = {0x09, 0x90 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOn);

}

// This is what we do when we get 'noteOff' MIDI instruction
void noteOff(byte channel, byte pitch, byte velocity) {
//
//  Serial.print("Receive Note Off: ");
//  Serial.print("note=");
//  Serial.print(pitch);
//  Serial.print(", ch=");
//  Serial.print(channel);
//  Serial.print(", vel=");
//  Serial.print(velocity);
//  Serial.println("");
Serial.print(pitch-12);
Serial.print(" ");
Serial.print(pitch);
Serial.print(" ");
Serial.print(pitch+12);
Serial.print(" ");
Serial.print(0);
Serial.print(" ");


  midiEventPacket_t noteOff = {0x08, 0x80 | channel, pitch, velocity};
  MidiUSB.sendMIDI(noteOff);

  float pixelMap = map(pitch, 24, 96, 0, 19); // since we only have 20 LEDs, we map the possible MIDI notes to this available range
  int pixelMapRounded = round(pixelMap);      // Make sure the mapped values are integers
  leds[pixelMapRounded] = CHSV(0, 0, 0);      // Turn off the LEDs that were mapped from the pitch after we receive noteOff instruction
  Serial.print(pixelMapRounded);
   Serial.print(" ");
  Serial.print(0);
Serial.println();
}

void setup() {
  Serial.begin(115200);

  strip.begin();



  // tell FastLED about the LED strip configuration
//  FastLED.addLeds<LED_TYPE, DATA_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalLEDStrip);
//  FastLED.setBrightness(BRIGHTNESS);
}

// First parameter is the event type (0x0B = control change).
// Second parameter is the event type, combined with the channel.
// Third parameter is the control number number (0-119).
// Fourth parameter is the control value (0-127).

void controlChange(byte channel, byte control, byte value) {
  midiEventPacket_t event = {0x0B, 0xB0 | channel, control, value};
  MidiUSB.sendMIDI(event);
}



void loop() {

  midiEventPacket_t rx = MidiUSB.read();
  switch (rx.header) {
    case 0:
      break; //No pending events

    case 0x9:
      noteOn(
        rx.byte1 & 0xF,  //channel
        rx.byte2,        //pitch
        rx.byte3         //velocity
      );
      break;

    case 0x8:
      noteOff(
        rx.byte1 & 0xF,  //channel
        rx.byte2,        //pitch
        rx.byte3         //velocity
      );
      break;

    case 0xB:
      controlChange(
        rx.byte1 & 0xF,  //channel
        rx.byte2,        //control
        rx.byte3         //value
      );
      break;

//    default:
//      Serial.print("Unhandled MIDI message: ");
//      Serial.print(rx.header, HEX);
//      Serial.print("-");
//      Serial.print(rx.byte1, HEX);
//      Serial.print("-");
//      Serial.print(rx.byte2, HEX);
//      Serial.print("-");
//      Serial.println(rx.byte3, HEX);

  while (Serial.available() > 0) {
   int r0 = Serial.parseInt();
    int g0 = Serial.parseInt();
    int b0 = Serial.parseInt();
    int key = Serial.parseInt();
     if (Serial.read() == '\n') {
        strip.setPixelColor(key, r0, g0, b0);
    }
  }
  }
  // Make sure we update the lights every loop
  strip.show();
}
