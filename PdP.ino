// Locker code
// Control for RFID scanner
// Control for Servo
// Control of 4 relays
// - LED relays
// - Lock relays
// Robin Lönnqvist 2.5.2017
// White rfid chip id 5E 3B 86 AB
// Blue rfid chip id F5 A6 18 AB

#include<SPI.h>       // SPI communication library
#include <MFRC522.h>  // RFID scanner library

//----------Define Pins Used----------
#define ledsUpper 3
#define ledsPersonal 6
#define lockPersonal 4
#define lockUpper 5
#define lockLimit_1 7
#define lockLimit_2 8
#define rfidReset 9
#define rfidSda SDA
//----------------------------------------

//----------Create instances for Servo and RFID scanner----------
MFRC522 mfrc522(rfidSda, rfidReset);
//----------------------------------------

//----------Variables----------
int successRead = 0;
byte readCard[4];
unsigned long scannerTime = 0;
//----------------------------------------

void setup() {
  Serial.begin(9600);
  SPI.begin();
  pinMode(ledsUpper, OUTPUT);
  pinMode(ledsPersonal, OUTPUT);
  pinMode(lockPersonal, OUTPUT);
  pinMode(lockUpper, OUTPUT);
  pinMode(lockLimit_1, INPUT);
  pinMode(lockLimit_2, INPUT);
  digitalWrite(lockLimit_1, HIGH);  // turn on pullup resistor
  digitalWrite(lockLimit_2, HIGH);  // turn on pullop resistor
  digitalWrite(lockPersonal, HIGH);
  digitalWrite(lockUpper, HIGH);
  digitalWrite(ledsUpper, HIGH);
  digitalWrite(ledsPersonal, HIGH);
  mfrc522.PCD_Init();
  ShowReaderDetails();
  mfrc522.PCD_SetAntennaGain(mfrc522.RxGain_max);
}

void loop() {
  do {
    successRead = getID();   // sets successRead to 1 when we get read from reader otherwise 0   
    if(digitalRead(lockLimit_1) == HIGH){
      Serial.println("locklimit low");
      digitalWrite(ledsUpper, LOW);
    }
    if(digitalRead(lockLimit_1) == LOW){
      Serial.println("locklimit high");
      digitalWrite(ledsUpper, HIGH);
    }
    if(digitalRead(lockLimit_2) == HIGH){
      Serial.println("locklimit low");
      digitalWrite(ledsPersonal, LOW);
    }
    if(digitalRead(lockLimit_2) == LOW){
      Serial.println("locklimit high");
      digitalWrite(ledsPersonal, HIGH);
    }
  }
  while (!successRead);
  if(mfrc522.uid.uidByte[0] == 0x5e && mfrc522.uid.uidByte[1] == 0x3B && mfrc522.uid.uidByte[2] == 0x86 && mfrc522.uid.uidByte[3] == 0xab){
    digitalWrite(lockUpper, LOW);
    delay(100);
    digitalWrite(lockUpper, HIGH);
  }
  if(mfrc522.uid.uidByte[0] == 0xF5 && mfrc522.uid.uidByte[1] == 0xA6 && mfrc522.uid.uidByte[2] == 0x18 && mfrc522.uid.uidByte[3] == 0xab){
    digitalWrite(lockUpper, LOW);
    digitalWrite(lockPersonal, LOW);
    delay(100);
    digitalWrite(lockUpper, HIGH);
    digitalWrite(lockPersonal, HIGH);
  }
}

//----------Function that prints information about the scanner----------
void ShowReaderDetails() {
  // Get the MFRC522 software version
  byte v = mfrc522.PCD_ReadRegister(mfrc522.VersionReg);
  Serial.print(F("MFRC522 Software Version: 0x"));
  Serial.print(v, HEX);
  if (v == 0x91)
    Serial.print(F(" = v1.0"));
  else if (v == 0x92)
    Serial.print(F(" = v2.0"));
  else
    Serial.print(F(" (unknown)"));
  Serial.println("");
  // When 0x00 or 0xFF is returned, communication probably failed
  if ((v == 0x00) || (v == 0xFF)) {
    Serial.println(F("WARNING: Communication failure, is the MFRC522 properly connected?"));
    while (true); // do not go further
  }
}
//----------------------------------------

//----------Get PICC's UID----------
int getID() {
  // Getting ready for Reading PICCs
  if ( ! mfrc522.PICC_IsNewCardPresent()) { //If a new PICC placed to RFID reader continue
    return 0;
  }
  if ( ! mfrc522.PICC_ReadCardSerial()) {   //Since a PICC placed get Serial and continue
    return 0;
  }
  // There are Mifare PICCs which have 4 byte or 7 byte UID care if you use 7 byte PICC
  // I think we should assume every PICC as they have 4 byte UID
  // Until we support 7 byte PICCs
  Serial.println(F("Scanned PICC's UID:"));
  for (int i = 0; i < 4; i++) {  //
    readCard[i] = mfrc522.uid.uidByte[i];
    Serial.print(readCard[i], HEX);
  }
  Serial.println("");
  mfrc522.PICC_HaltA(); // Stop reading
  return 1;
}
//------------------------------
