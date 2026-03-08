#include <Servo.h>

Servo tvcServo;

const int servoPin = 9;
const int neutralAngle = 90;
const int minAngle = 85;
const int maxAngle = 95;

void setup() {
  tvcServo.attach(servoPin);
  tvcServo.write(neutralAngle);
  Serial.begin(9600);
}

void loop() {
  // Sweep between low and high deflection angles
  for (int angle = minAngle; angle <= maxAngle; angle++) {
    tvcServo.write(angle);
    delay(15);
  }

  for (int angle = maxAngle; angle >= minAngle; angle--) {
    tvcServo.write(angle);
    delay(15);
  }
}
