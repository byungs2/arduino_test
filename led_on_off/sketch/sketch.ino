int trig = 2;
int echo = 3;
void setup() {
	pinMode(trig, OUTPUT);
	pinMode(echo, INPUT);
	Serial.begin(115200);
}

void loop() {
	digitalWrite(trig, HIGH);
	delayMicroseconds(10);
	digitalWrite(trig, LOW);
	int d = pulseIn(echo, HIGH) * 340 / 2 / 10000;
	Serial.println(d);
	delay(100);
}
