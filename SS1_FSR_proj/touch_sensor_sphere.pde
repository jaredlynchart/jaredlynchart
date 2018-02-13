/*
Reads values from serial port, written to the port by Arduino.
The size of an ellipse changes according to the serial values.
Must assign the correct port, see instructions below.
*/

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val; // creates variable for data coming from serial port

void setup() {
size(1280,1080,P3D);
lights();
/*
We must tell Processing which port to read from.
Run the sketch and check your console to see the results of printArray(Serial.list());
and that is how you know the port to use.
On my Mac, it is port 2 and so I open Serial.list()[2].
*/

printArray(Serial.list()); // this line prints the port list to the console
String portName = Serial.list()[2]; //change the number in the [] for the port you need
myPort = new Serial(this, portName, 9600);
}

void draw(){
if ( myPort.available() > 0) { // If data is available,
val = myPort.read(); // read it and store it in val
}

//draws an ellipse that grows and shrinks in relation to val
//background(255);
fill (0);
stroke(val,val,val,5);
translate(width/2,height/2.9,val);
    fill(val*.9,val*.8,val*.7,4);
    pushMatrix();
    rotateZ(val/10);
    //background(50,70,80,10);
    sphereDetail(val/50);
    sphere(val*2.5);
    
    camera(); 
 println(val);
popMatrix();

println (val); //prints to Processing console
}