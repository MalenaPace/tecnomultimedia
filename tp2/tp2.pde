//subestime mi capacidad de aprendizaje en poco tiempo, siento que no le di el espacio 
//necesario al tp y por eso no lo pude completar. perdón de antemano :(

PImage opt; 
color bg, c, v; 
int radio = 200; 
boolean debug = true; 

void setup() {
  size(800,400); 
rectMode(CENTER); 

opt = loadImage ( "optica.jpg"); 
bg = color(180,225,130); 
c = color (200,0,0); 
v = color (180,225,130); 
}

void draw() {


background( bg); 
image(opt, 0,0,400,400); 
if (debug) {
fill(0);   
textSize(40); 
text("no se pudo profe :p", 100,100);
}

translate(400,0); 
noStroke(); 

for( int i = 0; i < 20; i++) {
  fill(c); 
  circle(200,200, radio*2); 
 
}
 
 
 }
 
 void keyPressed() {
 if ( key == 'd' ) {
  debug = !debug; 
 }
 }
