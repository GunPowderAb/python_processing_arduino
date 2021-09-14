import processing.net.*;

Server myServer;
int val = 0;

void setup() 
{
  size(400, 200);
  // Starts a myServer on port 50007 host is 127.0.0.1
  myServer = new Server(this, 50007); 
}

void draw()
{
  val = (val + 1) % 255;
  background(val);
  //send to client
  myServer.write("YO HELLO");
  
  Client c = myServer.available();
  //if the client has sent something then print it
  if (c !=null)
  {
    String whatClientSaid = c.readString();
    if(whatClientSaid != null)
      println(c.ip() + "\t" + whatClientSaid);
  }
 
}
