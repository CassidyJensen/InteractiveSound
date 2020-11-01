//hello blink

int RXLED = 17; 

void setup() {
  // put your setup code here, to run once:
  pinMode(RXLED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(RXLED, LOW);
  delay(1000);
  Serial.println(RXLED);
  digitalWrite(RXLED, HIGH);
  delay(1000);
}
