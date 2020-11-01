//hello blink

int RXLED = 17; 

void setup() {
  // put your setup code here, to run once:
  pinMode(RXLED, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
 //sending + basic
//  digitalWrite(RXLED, LOW); //low is on
//  delay(1000);
//  Serial.println(RXLED);
//  digitalWrite(RXLED, HIGH);
//  delay(1000);


// receiving basic
  if (Serial.available()) {
    int value1 = Serial.read();
    if(value1 == 1){
      digitalWrite(RXLED, HIGH);
      Serial.println('Test high');
    }
    else if (value1 == 0) {
      digitalWrite(RXLED, LOW);
      Serial.println('Test low');
    }
  }
}
