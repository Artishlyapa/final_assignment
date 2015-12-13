//////////////////////////////////////////////////////////////ARDUINO CODE

#include <Servo.h>

Servo myservo;
Servo myservo2;
Servo myservo3;
Servo myservo4;
Servo myservo5;
Servo myservo6;

char val;

void setup()
{
  Serial.begin (9600);
  myservo.attach(13);
  myservo2.attach(12);
  myservo3.attach(11);
  myservo4.attach(10);
  myservo5.attach(9);
  myservo6.attach(8);
}

void loop()
{
  String value = Serial.readStringUntil('\n');
  Serial.println(value);
  int pos1 = value.indexOf(',');
  int pos2 = value.indexOf(',', pos1+1);
  int pos3 = value.indexOf(',', pos2+1);
  int pos4 = value.indexOf(',', pos3+1);
  int pos5 = value.indexOf(',', pos4+1);
//  int pos2 = value.lastIndexOf(',');
  String num1 = value.substring(0, pos1);
  String num2 = value.substring(pos1 + 1);
  String num3 = value.substring(pos2 + 1);
  String num4 = value.substring(pos3 + 1);
  String num5 = value.substring(pos4 + 1);
  String num6 = value.substring(pos5 + 1);
  if (value.length() > 0) {
    myservo.write(num1.toInt());
    myservo2.write(num2.toInt());
    myservo3.write(num3.toInt());
    myservo4.write(num4.toInt());
    myservo5.write(num5.toInt());
    myservo6.write(num6.toInt());
  }
 delay(15);
}

////////////////////////////////////////////////////////////////////PROCESSING CODE

import processing.serial.*;

Serial myPort;  // Create object from Serial class

int m1, m2;
int pos = 0;
int lpos1, lpos2, lpos3, lpos4, lpos5, lpos6;

void setup() 
{
  size(200, 200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[3]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void keyPressed() {
  if (key == 'a') {
    m1 = 70;
    m2 = 40;
  }
  if (key == 'b') {
    m1 = 45;
    m2 = 45;
  }
  if (key == 'c') {
    m1 = 20;
    m2 = 20;
  }
  if (key == 'd') {
    m1 = 159;
    m2 = 155;
  }
  if (key == 'e') {
    m1 = 40;
    m2 = 70;
  }
  if (key == 'f') {
    m1 = 0;
    m2 = 0;
  }
  if (key == 'g') {
    m1 = 50;
    m2 = 0;
  }
  if (key == 'h') {
    m1 = 90;
    m2 = 70;
  }
  if (key == 'i') {
    m1 = 90;
    m2 = 90;
  }
  if (key == 'j') {
    m1 = 90;
    m2 = 180;
  }
  if (key == 'k') {
    m1 = 70;
    m2 = 78;
  }
  if (key == 'l') {
    m1 = 0;
    m2 = 90;
  }
  if (key == 'm') {
    m1 = 150;
    m2 = 45;
  }
  if (key == 'n') {
    m1 = 60;
    m2 = 120;
  }
  if (key == 'o') {
    m1 = 17;
    m2 = 60;
  }
  if (key == 'p') {
    m1 = 0;
    m2 = 60;
  }
  if (key == 'q') {
    m1 = 150;
    m2 = 160;
  }
  if (key == 'r') {
    m1 = 90;
    m2 = 0;
  }
  if (key == 's') {
    m1 = 180;
    m2 = 0;
  }
  if (key == 't') {
    m1 = 60;
    m2 = 180;
  }
  if (key == 'u') {
    m1 = 90;
    m2 = 0;
  }
  if (key == 'v') {
    m1 = 60;
    m2 = 90;
  }
  if (key == 'w') {
    m1 = 120;
    m2 = 75;
  }
  if (key == 'x') {
    m1 = 80;
    m2 = 120;
  }
  if (key == 'y') {
    m1 = 150;
    m2 = 90;
  }
  if (key == 'z') {
    m1 = 0;
    m2 = 180;
  }

  if (pos == 0) {
    lpos1 = m1;
    lpos2 = m2;
    pos += 1;
  } else if (pos == 1) {
    lpos3 = m1;
    lpos4 = m2;
    pos += 1;
  } else if (pos == 2) {
    lpos5 = m1;
    lpos6 = m2;
    pos = 0;
  }
  myPort.write(lpos1+", "+lpos2+", "+lpos3+", "+lpos4+", "+lpos5+", "+lpos6+"\n");
}
void draw() {
}
