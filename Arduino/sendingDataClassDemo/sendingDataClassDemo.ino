
//led = 13 on uno
// led = 17 on micro
const int led = 3;
int value;


void setup() {
  // put your setup code here, to run once:
  pinMode(led, OUTPUT);
  Serial.begin(9600);
}

void loop() {
//  digitalWrite(led, LOW);
//  delay(1000);
//  digitalWrite(led, HIGH);
//  delay(1000);

  // put your main code here, to run repeatedly:
  if (Serial.available()) {
    value = Serial.read();
    Serial.println(value);

    digitalWrite(led, value);
  }
}
