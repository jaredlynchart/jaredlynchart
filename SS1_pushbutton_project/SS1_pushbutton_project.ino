//jared lynch this sketch makes a button modulate the speed of blinking 
const int LED = 13; // the pin for the LED
const int BUTTON = 7; // the input pin where the
 // pushbutton is connected
int val = 0; // val will be used to store the state
 // of the input pin
void setup() {
 pinMode(LED, OUTPUT); // tell Arduino LED is an output
 pinMode(BUTTON, INPUT); // and BUTTON is an input
}
void loop(){
 val = digitalRead(BUTTON); // read input value and store it
 // check whether the input is HIGH (button pressed)
 if (val == HIGH) {
 digitalWrite(LED, HIGH); // turn LED ON
 digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(1000);
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  delay(1000);
 } else {
 digitalWrite(LED, LOW);
 digitalWrite(LED_BUILTIN, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(100);
  digitalWrite(LED_BUILTIN, LOW);    // turn the LED off by making the voltage LOW
  delay(100);
 
 }
}
