//https://youtu.be/48RW4JHMXUA

#include <ESP8266WiFi.h>
#include <RCSwitch.h>
#include "fauxmoESP.h"

#define WIFI_SSID "HausRees-Draytek"
#define WIFI_PASS "6422048768813046"


fauxmoESP alexawifi;
RCSwitch mySwitch = RCSwitch();

// Fernsteuerung Viktor

// Steckerleiste 1
// ON:  7734399 (24Bit) Binary: 011101100000010001111110
// OFF: 7734398 (24Bit) Binary: 011101100000010001111110

// Steckerleiste 2
// ON:  7734397 (24Bit) Binary: 011101100000010001111101
// OFF: 7734396 (24Bit) Binary: 011101100000010001111100

// Steckerleiste 3
// ON:  7734395 (24Bit) Binary: 011101100000010001111011
// OFF: 7734394 (24Bit) Binary: 011101100000010001111010

// Steckerleiste 4
// ON:  7734391 (24Bit) Binary: 011101100000010001110111
// OFF: 7734390 (24Bit) Binary: 011101100000010001110110

// ALL
// ON:  7734386 (24Bit) Binary: 011101100000010001110010
// OFF: 7734385 (24Bit) Binary: 011101100000010001110001

// 433 MHz Codes fuer Steckerleistenleiste von Viktor
// jeweils Code für ein und aus
int geraeteCodes[5][2] = {
  {7734399, 7734398},  // Steckerleiste 1
  {7734397, 7734396},  // Steckerleiste 2
  {7734395, 7734394},  // Steckerleiste 3
  {7734391, 7734390},  // Steckerleiste 4
  {7734386, 7734385}   // Steckerleiste alle
};

void schalten(const char * device_name, bool state, int code_ein, int code_aus);

void setup() {
  Serial.begin(115200);
  Serial.println("Nach dem Verbinden, sage 'Alexa, schalte <Gerät> an' oder 'aus'");

  mySwitch.enableTransmit(5); // GPIO5 = D1

  wifiSetup();
  geraete();
}

void wifiSetup() {
  WiFi.mode(WIFI_STA);

  Serial.printf("Verbindungs zu %s wird aufgebaut ", WIFI_SSID);

  WiFi.begin(WIFI_SSID, WIFI_PASS);

  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(">");
    delay(100);
  }
  Serial.println("");
  Serial.printf("Verbunden! SSID: %s, IP Adresse: %s\n", WiFi.SSID().c_str(), WiFi.localIP().toString().c_str());
}

void geraete() {
  alexawifi.addDevice("Weihnachtsbaum");//ID 0
  alexawifi.addDevice("Deko"); //ID 1
  alexawifi.addDevice("Steckerleiste"); //ID 2
  alexawifi.addDevice("Alle"); //ID 3

  alexawifi.onMessage(anfrage);
}

void anfrage(uint8_t device_id, const char * device_name, bool state) {
  int index = device_id;
  Serial.print("device_id: "); Serial.println(index);  

  schalten(device_name, state, *geraeteCodes[index, 0], *geraeteCodes[index, 1]);
}


void schalten(const char * device_name, bool state, int code_ein, int code_aus) {
  Serial.print("Gerät: "); Serial.println(device_name);
  Serial.print("Status: ");

  if (state) {
    Serial.print("EIN - ");
    Serial.println(code_ein);
    mySwitch.send(code_ein, 24);
    delay(50);
  }
  else {
    Serial.print("AUS - ");
    Serial.println(code_aus);
    mySwitch.send(code_aus, 24);
    delay(50);
  }
}

void loop() {
  alexawifi.handle();
}
