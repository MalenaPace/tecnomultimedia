int px, py, ancho, alto;
PFont fuente;
PImage cocoMenu;
PImage cocop1;
PImage cocop2;
PImage cocop3;
PImage cocop4;
PImage cocoFin;

float txt1;
float txt2;
int tamanio;

String estado;
int marcaTiempo;

void setup() {

  size(640, 480);
  textAlign( CENTER, CENTER );
  fuente = loadFont ("CenturyGothic-Italic-30.vlw");

  px = 250;
  py = 350;
  ancho = 50;
  alto = 100;

  tamanio = 0;

  cocoMenu = loadImage ("cocodrilo1.jpg");
  cocop1 = loadImage ("cocodrilo2.jpg");
  cocop2 = loadImage ("NileCrocodile.jpg");
  cocop3 = loadImage ("cocodrilo4.jpg");
  cocop4 = loadImage ("cocodrilo5.jpg");

  estado = "menu";

  background (20, 180, 30);
}

void draw() {


  println ( "inicio : " + millis () ) ;
  println ( millis () - marcaTiempo) ;

  int diferenciaTiempo = millis() - marcaTiempo;



  //menu
  if ( estado.equals("menu") ) {
    image (cocoMenu, 235, 250);
    fill(0);
    textSize(100);
    text ("MENU", 190, 180);
    //botón
    circle(170, 350, 100);

    //pantalla1
  } else if (estado.equals ("p1") ) {
    background (20, 180, 30);
    image (cocop1, 0, 0);
    textFont( fuente ) ;
    textSize(tamanio);
    if (( tamanio >= 0) && (tamanio <= 25)) {
      tamanio ++;
    }
    fill(255);
    text ("Los cocodrilos son grandes reptiles semiacúaticos \n que viven en regiones trópicales", width/2, height/2);

    //tiempo
    if (diferenciaTiempo >= 10000 ) {
      estado = "p2" ;
      marcaTiempo = millis();
      tamanio = 0;
    }

    //pantalla2
  } else if (estado.equals ("p2") ) {

    background (20, 180, 30);
    image (cocop2, 0, 0);
    textSize(tamanio);
    if (( tamanio >= 0) && (tamanio <= 23 )) {
      tamanio ++;
    }
    fill(255);
    text ("Viven en congregaciones \n y son depredadores que se alimentan, \n principalmente, de otros animales invertebrados.", width/2, height/2);
    //tiempo
    if (diferenciaTiempo >= 7000 ) {
      estado = "p3" ;
      marcaTiempo = millis();
      tamanio = 0;
    }


    //pantalla3
  } else if (estado.equals ("p3") ) {
    background (20, 180, 30);
    image (cocop3, 0, 0);
    textSize(tamanio);
    if (( tamanio >= 0) && (tamanio <= 23 )) {
      tamanio ++;
    }
    fill(200, 200);
    text ( "Generalmente, \n su tamaño promedio es de 5 metros y 250 kilos \n y viven entre 50 a 80 años.", width/2, height/2);
    //tiempo
    if (diferenciaTiempo >= 7000 ) {
      estado = "p4" ;
      marcaTiempo = millis();
      tamanio = 0;
    }


    //pantalla4
  } else if (estado.equals ("p4") ) {
    background (20, 180, 30);
    image (cocop4, 0, 0);
    textSize(tamanio);
    if (( tamanio >= 0) && (tamanio <= 26)) {
      tamanio ++;
    }
    fill(255);
    text ("En  muchas culturas, \n como la egipcia, el cocodrilo \n fue motivo de adoración y respeto.", width/2, height/2);
    //tiempo
    if (diferenciaTiempo >= 7000 ) {
      estado = "p5" ;
      marcaTiempo = millis();
      tamanio = 0;
    }

    //pantalla5
  } else if (estado.equals ("p5") ) {
    background (20, 180, 30);
    textAlign ( CENTER, CENTER);
    textSize (100);
    fill(45, 87, 44);
    text ("FIN. \n Reinicio. ", width/2, height/2);
    //botónReinicio
    if ( (mouseX>250 && mouseX <350 && mouseY>50 && mouseY<100 ) ) {
      fill ( 100);
    } else {
      fill( 200);
    }
    rect (px, py, alto, ancho);
  }
}



void keyPressed() {
  if ( key == ' ' ) {
    marcaTiempo = millis();
  }
}

void mousePressed() {
  if (estado.equals("menu") ) {
    if (dist (170, 350, mouseX, mouseY) < 50/2 ) {
      estado = "p1" ;
    }
  }

  if (mouseX>px && mouseX<px+ancho && mouseY>py && mouseY<py+alto) {
    estado = "p1";
  }
}
