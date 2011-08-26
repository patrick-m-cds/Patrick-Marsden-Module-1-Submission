  //*Produces a random RGB colour on the LED light*//
  //This code is a combination of code taken from //
  //'SparkFun Electronics' inventors guide combined//
  // combined and edited by myself//
  
    int RED_LED_PIN = 9; // LED leads connected to PwM pins
    int GREEN_LED_PIN = 10; // LED leads connected to PwM pins
    int BLUE_LED_PIN = 11; // LED leads connected to PwM pins
    int inputPin1 = 3; // button 1
    int inputPin2 = 2; // button 2
    int pin = 0; 
    int pin_num;
    
    
    void setup () {
       pinMode(inputPin1, INPUT); // make button 1 an input
       pinMode(inputPin2, INPUT); // make button 2 an input       
    }

  void loop () {
    
    if (pin == 0) {
         pin_num = 9;
      }
    
    else if (pin == 1) {
         pin_num = 10;
      }
    
    else if (pin == 2) {
         pin_num = 11;
      }
    
    pinMode(pin_num, OUTPUT);
    
       // This section of code deals with turning the switch on & off 
       if (digitalRead(inputPin1) == LOW) {
       pin = random (0, 2); // Chooses a random colour between 1 & 3
       digitalWrite(pin_num, LOW); // turn LED OFF
       } 
       
       else if (digitalRead(inputPin2) == LOW) {
       digitalWrite(pin_num, HIGH); // turn LED ON
       }
       
} 
