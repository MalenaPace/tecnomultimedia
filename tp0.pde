PImage cone;
void setup () {
  size (800,400);
  cone = loadImage ("data/gatoo.jpg");
}
void draw () {
  background(255);
  image (cone,0,0,400,400);
  
  noStroke();
  fill(255,150,0);
  quad(500,200,670,120,790,390,470,390);
  
  stroke(230);
  fill(250);
  triangle(790,390,570,160,700,160);
  
  noStroke();
  fill(255,150,0);
  ellipse(670,120,200,200);
  
  fill(250);
  ellipse(700,160,100,100);
  fill(234,137,154);
  triangle(720,120,740,150,700,150);
  //ojos
  fill(200,200,250);
  circle(640,100,40);
  circle(735,95,40);
  fill(0);
  ellipse(640,100,10,40);
  ellipse(735,95,10,40);
  fill(255);
  circle(645,90,8);
  circle(740,85,8);
  //orejas
  fill(255,150,0);
  triangle(560,10,580,90,650,30);
  fill(234,137,154);
  triangle(566,12,590,80,640,30);
  fill(255,150,0);
  noStroke();
  triangle(730,5,730,40,680,20);
  
  stroke(255);
  
  line(680,150,550,170);
  line(670,170,570,190);
  line(670,190,590,210);
  
  noStroke();
  fill(255,120,0);
  rect(590,300,90,90);
  rect(690,300,70,90);
  
  stroke(255,120,0);
  strokeWeight(2);
  line(486,300,560,300); 
  line(483,320,570,320);
  line(480,340,572,340);
  line(489,280,550,280);
  line(492,260,540,260);
  line(495,240,530,240);
  line(478,360,574,360);
}
