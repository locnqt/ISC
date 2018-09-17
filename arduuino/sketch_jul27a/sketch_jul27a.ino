
int a,b,c,d,e;
void setup() {
  // put your setup code here, to run once:
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);
  pinMode(5, INPUT);
  pinMode(6, INPUT);
  pinMode(7, INPUT);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
//  //trai
//  digitalWrite(8, 1);
//  digitalWrite(9, 0);//phai thang
//  digitalWrite(10, 1);//trai thang
//  digitalWrite(11, 0);
//  delay(1000);
//  //thang
//  digitalWrite(8, 0);
//  digitalWrite(9, 1);//phai lui
//  digitalWrite(10, 1);//trai thang
//  digitalWrite(11, 0);
//  delay(1000);
//  //lui
//  digitalWrite(8, 1);
//  digitalWrite(9, 0);//phai thang
//  digitalWrite(10, 0);//trai lui
//  digitalWrite(11, 1);
//  delay(1000);
//  //phai
//  digitalWrite(8, 0);
//  digitalWrite(9, 1);//phai lui
//  digitalWrite(10, 0);//trai lui
//  digitalWrite(11, 1);
//  delay(1000);
//  digitalWrite(8, 0);
//  digitalWrite(9, 0);
//  digitalWrite(10, 0);
//  digitalWrite(11, 0);
//  delay(1000);
  a = digitalRead(3);
  b = digitalRead(4);
  c = digitalRead(5);
  d = digitalRead(6);
  e = digitalRead(7);
  if((a+b) == (d+e) && c==0){ //thangs
  digitalWrite(8, 0);
  digitalWrite(9, 1);//phai lui
  digitalWrite(10, 1);//trai thang
  digitalWrite(11, 0);
  delay(50);
  }
  else if((a+b)<(d+e)){ //trai
    digitalWrite(8, 1);
  digitalWrite(9, 0);//phai thang
  digitalWrite(10, 1);//trai thang
  digitalWrite(11, 0);
  delay(50);
  }
  else if((a+b)> (d+e)){ //phai
    digitalWrite(8, 0);
  digitalWrite(9, 1);//phai lui
  digitalWrite(10, 0);//trai lui
  digitalWrite(11, 1);
  delay(50);
  }
  else{ //dung
    digitalWrite(8, 0);
  digitalWrite(9, 0);
  digitalWrite(10, 0);
  digitalWrite(11, 0);
  }
  Serial.print(a);
  Serial.print(b);
  Serial.print(c);
  Serial.print(d);
  Serial.println(e);
}
