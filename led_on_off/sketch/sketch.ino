int val=0;
void setup() {
  //pinMode(2, INPUT);
  DDRD = 0;
  //pinMode(3, OUTPUT);
  DDRD |= (1 << PD3);
  //Serial.begin(9600);
}

void loop() {
  //val = digitalRead(2);
  val = PORTD >> PD2 & HIGH;
  if(val == HIGH) {
    digitalWrite(3, HIGH);
  } else {
    digitalWrite(3, LOW);
  }
  //Serial.println(val);
}
