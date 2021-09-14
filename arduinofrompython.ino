/*
 * Turns an LED on when it recieves the proper signal.  
 * Most Arduinos have an on-board LED you can control. On the UNO, MEGA and ZERO
   it is attached to digital pin 13, on MKR1000 on pin 6.
 */
int s;

void setup() 
{
    Serial.begin(9600); //set the baudrate
    pinMode(LED_BUILTIN, OUTPUT); //set the led at pin 13 as output
}

void loop() 
{
  if (Serial.available() > 0) // check if data is being sent
  {
    s=Serial.read();  
    if(s=='H'))
      digitalWrite(LED_BUILTIN, HIGH); // turn on the LED
    if(s=='L')
      digitalWrite(LED_BUILTIN, LOW);  // turn off the LED
  }  
}
