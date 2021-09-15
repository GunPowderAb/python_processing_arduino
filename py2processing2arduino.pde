import processing.net.*;
import processing.serial.*;
Server myServer;
Serial port;
String whatClientSaid;

void setup()
{
  size(340,340);
  myServer = new Server(this, 50007); // host 127.0.0.1
  port = new Serial(this, Serial.list()[0], 9600);
  frameRate(6);
}

void draw() 
{
  myServer.write("Whatsupp?");
  Client thisClient = myServer.available();
  if(thisClient != null)
  {
  //read the value as a string and store it
    String whatClientSaid = thisClient.readString();
    
  //tell the arduino to turn on the LED  
    if(whatClientSaid.equals( "H" ))
       port.write("H");
  //tell the arduino to turn off the LED      
    if(whatClientSaid.equals( "L" ))
       port.write("L");
       
    if(whatClientSaid != null)
      {
      //pop a random square on the console whenever a message is received      
        fill(#FFB003);
        rect(random(height),random(width),50,50);
        
      //print the data from the client along with its IP Address        
        println("\n" + thisClient.ip() + "\t" + whatClientSaid);
        
      }
  }
  else
    background(#FFE8B7);
  
}
