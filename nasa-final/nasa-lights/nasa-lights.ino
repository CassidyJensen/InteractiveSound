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
int isHazard = 0;
int absMag = 0;
int orbitalPeriod = 0;
int diamMin =0;
int diamMax = 0;
int hazPin = 14;
int loopTarget = 0;
int loopNum = 0;


void setup()
{
  Serial.begin(9600); // open the arduino serial port
  pinMode(hazPin, OUTPUT);
  FastLED.addLeds<LED_TYPE, DATA_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection(TypicalLEDStrip);
  FastLED.setBrightness(BRIGHTNESS);
}

void loop()
{ 
  if(Serial.available()) // check to see if there's serial data in the buffer
  {
    isHazard = Serial.read(); // read a byte of serial data
    absMag = Serial.read();
    orbitalPeriod = Serial.read();
    diamMin = Serial.read();
    diamMax = Serial.read();
    started = 1; // set the started flag to on
  }

  if(started) // loop once serial data has been received
  {
    randomvalue = random(1000); // pick a new random number
    Serial.print(countervalue); // print the counter
    Serial.print(" "); // print a space
    Serial.print(randomvalue); // print the random value
    Serial.print(" "); // print a space
    Serial.print(isHazard);
    Serial.print(" "); // print a space
    Serial.print(absMag);
    Serial.print(" "); // print a space
    Serial.print(orbitalPeriod);
    Serial.print(" "); // print a space
    Serial.print(diamMin);
    Serial.print(" "); // print a space
    Serial.print(diamMax);
    Serial.println(); // print a line-feed
   
    countervalue = (countervalue+1)%1000; // increment the counter

    digitalWrite(hazPin, isHazard);


    if(loopTarget < NUM_LEDS){
    for( int i = 0; i < NUM_LEDS; i++) {
     leds[i] = CRGB(0,0,0);
    }
    leds[loopTarget] = CRGB(absMag, diamMin, diamMax);
    
    if(loopNum >= orbitalPeriod){
      loopTarget ++;
      loopNum = 0;
    }
    loopNum ++;
  }
  else{
    loopTarget = 0;
    loopNum = 0;
  }

    delay(100); // pause
  }

    FastLED.show();

}
