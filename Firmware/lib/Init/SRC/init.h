#pragma once

#include <ESP8266WiFi.h>
#include <ArduinoOTA.h>
#include "display.h"
//#include <vector>
//#include "Json.h"

// Make sure to update this for your own WiFi network!
const char *ssid{"HG655D-14581D"};
const char *wifi_password{"ULW397E9"};
// Make sure to update this for your own MQTT Broker!
const char *mqtt_server{"192.168.1.21"};
const char *mqtt_topic_out{"domoticz/out"};
const char *mqtt_topic_in{"domoticz/in"};
const char *mqtt_username{"mqtt"};
const char *mqtt_password{"1Edereen"};
// The client id identifies the ESP8266 device. Think of it a bit like a hostname (Or just a name, like Erik).
const char *clientID{"Garagedeur"};
// Identifier of the device in Domoticz
const uint16_t idx_garage_door{37}; // Switch IDX generated bij Domoticz
const uint16_t idx_thsensor{33};    // Sensor IDX generated bij Domoticz
// Port to which MQTT listens
const int mqtt_port{1883};
/**********************************************************/
//Function Definitions
void Connect(); // Declaration to function to Initialise WiFi and MQTT
void OTAinit(); // Declaration to initialise the Over the Air update functionality
String WifiStatus(char);
//void callback(const char *, uint8_t *, unsigned int);
/**********************************************************/
void Connect()
{
  if (WiFi.status() != WL_CONNECTED)
  {
    outputinfo(String("Wi-Fi mode set to WIFI_STA " + WiFi.mode(WIFI_STA) ? "\r\n" : "Failed!\r\n"));
    outputinfo("Connecting : \r\n");
    outputinfo(String(ssid));
    // Connect to the WiFi
    WiFi.begin(ssid, wifi_password);
    WiFi.printDiag(Serial);
    while (WiFi.status() != WL_CONNECTED)
    {
      delay(500);
      outputinfo(WifiStatus(WiFi.status()) + String("\r\n"));
    }
    // Debugging - Output the IP Address of the ESP8266
    outputinfo("\r\nIP: ");
    outputinfo(WiFi.localIP().toString() + "\r\n");
    // Signaalsterkte.
    long rssi = WiFi.RSSI();
    outputinfo("Signaal : ");
    Serial.printf("%ld", rssi);
    outputinfo(" dBm\r\n");
  }
  /*   if (!client.connected())
    {
        outputinfo("MQTT :");
        while (!client.connect(clientID, mqtt_username, mqtt_password))
        {
            outputinfo(".");
        }
        outputinfo(" Connected!\r\n");
        while (!client.subscribe(mqtt_topic_out))
        {
            client.loop();
            delay(100);
        }
        outputinfo("Listening: ");
        outputinfo(String(mqtt_topic_out) + "\r\n");
    } */
}

void OTAinit()
{
  // Initialize OTA (Over The Air updates)
  // Port defaults to 8266
  // ArduinoOTA.setPort(8266);
  // inline declaration of function
  ArduinoOTA.onStart([]() { outputinfo("Start\r\n"); });
  ArduinoOTA.onEnd([]() { outputinfo("\nEnd\r\n"); });
  ArduinoOTA.onProgress([](unsigned int progress, unsigned int total) {
    Serial.printf("Progress: %u%%\r\n", (progress / (total / 100)));
  });
  ArduinoOTA.onError([](ota_error_t error) {
    Serial.printf("Error[%u]: ", error);
    if (error == OTA_AUTH_ERROR)
      outputinfo("Auth Failed\r\n");
    else if (error == OTA_BEGIN_ERROR)
      outputinfo("Begin Failed\r\n");
    else if (error == OTA_CONNECT_ERROR)
      outputinfo("Connect Failed\r\n");
    else if (error == OTA_RECEIVE_ERROR)
      outputinfo("Receive Failed\r\n");
    else if (error == OTA_END_ERROR)
      outputinfo("End Failed\r\n");
  });
  ArduinoOTA.begin();
  outputinfo("OTA initialised\r\n");
}
/*
void callback(const char *topic, uint8_t *payload, unsigned int length)
{
#ifdef DEBUG
  outputinfo("Message arrived [");
  outputinfo(topic);
  outputinfo("] ");
#endif
  String message;
  for (unsigned int i = 0; i < length; i++)
  {
    message += (char)payload[i];
  }
#ifdef DEBUG
  outputinfo(message + "\r\n");
#endif
  Json json;
  if (json.readJson(message))
  {
    outputinfo("IDX received : ");
    outputinfo(json.getidx() + "\r\n");
    switch (json.getidx())
    {
    case idx_garage_door:
      if (json.getcommand() == "getdeviceinfo")
      {
      }
      else if (json.getcommand() == "")
      {
        outputinfo("Message : ");
        outputinfo(message);
      }
      break;
    case idx_thsensor:
      if (json.getcommand() == "getdeviceinfo")
      {
      }
      break;
    }
  }
}
*/

String WifiStatus(char stat) 
{ 
  switch (stat) {
    case 0 : return "WL_IDLE_STATUS, Wi-Fi is in process of changing between statuses";
    case 1 : return "WL_NO_SSID_AVAIL, configured SSID cannot be reached";
    case 3 : return "WL_CONNECTED, connection is established";
    case 4 : return "WL_CONNECT_FAILED, password is incorrect";
    case 6 : return "WL_DISCONNECTED, module is not configured in station mode";
    default : return "STATUS not recognised";
  };
}