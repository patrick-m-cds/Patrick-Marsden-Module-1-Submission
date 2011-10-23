// This code is an adaptation from the 'Subtractive Color Wheel'
// by Ira Greenberg.  I have adapted and modified it to suit my 
// preferences.  

int segs = 72;  // Number of segments to divide proposed shape by
int steps = 1;  // Number of steps within the circle
float rotAdjust = TWO_PI / segs / 2;
float radius;
float segWidth;
float interval = TWO_PI / segs;
PFont f;                          // Declaring the PFont variable



void setup() {
  size(500, 500);  // Lets the size of the output to be 500 x 500 pixels
  background(0);  // The background colour
  smooth();  // smooths out the edges of the circle
  ellipseMode(RADIUS);  // creates a circle the size of radius
  noStroke();
  radius = min(width, height) * 0.45;  // makes the diameter of the circle 90% of the sketch area
  segWidth = radius / steps;  // makes the width of the segments the radius divided by the number of steps
  drawCircle();
  f = loadFont("Trebuchet-BoldItalic-20.vlw"); //  Loads the font that was declared as a variable earlier
 
  
}


void draw() {
  textFont(f,20);                 // Specifies the  font to be used
  fill(255);                        // Specifies the font color 
  //textAlign(CENTER);
  text("Information Visualisation",130,18);  // Display's the text at that position
  
  fill (255);
  ellipse(250,250,60,60);
  
  textFont(f,10);                 
  fill(0);                        
  text("7am",240,200);  
  
  textFont(f,10);                 
  fill(0);                         
  text("7pm",240,210);  
  
  textFont(f,10);                 
  fill(0);                         
  text("1pm",240,305);  
  
  textFont(f,10);                 
  fill(255);                         
  text("1-5",21,20);  
  
  textFont(f,10);                 
  fill(255);                         
  text("5-15",20,60); 
  
  textFont(f,10);
  fill(255); 
  text("15+",20,100);
  
  fill(234, 61, 61, 255);
  rect(20,20,20,20);

  fill(61, 126, 234, 255);
  rect(20,60,20,20);

  fill(104, 238, 104,255);
  rect(20,100,20,20);

}

  

void drawCircle() {
  for (int j = 0; j < steps; j++) {
    color[] cols = {
      color(234, 61, 61),  //specifies the colour of the segment
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(234, 61, 61),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(234, 61, 61),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(234, 61, 61),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),
      color(234, 61, 61),
      color(234, 61, 61),
      color(61, 126, 234),
      color(61, 126, 234),
      color(234, 61, 61),
      color(104, 238, 104),
      color(61, 126, 234),    
      };
      
      
    for (int i = 0; i < segs; i++) { // the following section makes sure that the circle is even when drawn and rotated.  
      fill(cols[i]);
      arc(width/2, height/2, radius, radius,
          interval*i+rotAdjust, interval*(i+1)+rotAdjust);
    }
    radius -= segWidth;
  }
}
