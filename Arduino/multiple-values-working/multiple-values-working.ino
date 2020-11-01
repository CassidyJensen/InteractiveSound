// Arduino Serial Tester
// rld, cycling'74, 3.2008
#include "FastLED.h"
#define DATA_PIN    6
#define LED_TYPE    WS2812B
#define COLOR_ORDER GRB
#define NUM_LEDS    20
#define BRIGHTNESS  50
CRGB leds[NUM_LEDS];

long randomvalue = 0; // random value
long countervalue = 0; // counter value
int started = 0; // flag for whether we've received serial yet
int rval = 0;
int gval = 0;
int bval = 0;
int aval =0;


void setup()
{
  Serial.begin(9600); // open the arduino serial port
  FastLED.addLeds<LED_TYPE, DATA_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(BRIGHTNESS);
}

void loop()
{ 
  if(Serial.available()) // check to see if there's serial data in the buffer
  {
    rval = Serial.read(); // read a byte of serial data
    gval = Serial.read();
    bval = Serial.read();
    aval = Serial.read();
    started = 1; // set the started flag to on
  }

  if(started) // loop once serial data has been received
  {
    randomvalue = random(1000); // pick a new random number
    Serial.print(countervalue); // print the counter
    Serial.print(" "); // print a space
    Serial.print(randomvalue); // print the random value
    Serial.print(" "); // print a space
    Serial.print(rval);
    Serial.print(" "); // print a space
    Serial.print(gval);
    Serial.print(" "); // print a space
    Serial.print(bval);
    Serial.print(" "); // print a space
    Serial.print(aval);
    Serial.println(); // print a line-feed
   
    countervalue = (countervalue+1)%1000; // increment the counter

    delay(100); // pause
  }

  for( int i = 0; i < NUM_LEDS; i++) {
     leds[i] = CRGB(rval,gval,bval);
  }

  FastLED.show();

}
