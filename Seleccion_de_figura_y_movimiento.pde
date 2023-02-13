// Este código nos permite elegir entre tres figuras: circulo (c), rectángulo (r) y triángulo (t). Además de poder mover dicha figura con las flechas.
// Para cambiar el color del fondo presiona la tecla "a", para cambiar el color de la figura presiona la tecla "s". Para reiniciar los colores se presiona "b".

float x = 400;
float y = 400;
float dx = 5;
float dy = 5;
String f; //Para guardar la selección de figura
float c1 = 255; // Para el color de fondo 
float c2 = 255; // Para el color de fondo 
float c3 = 255; // Para el color de fondo 
float C1 = 0; // Para el color del circulo
float C2 = 0; // Para el color del circulo 
float C3 = 0; // Para el color del circulo 


void setup(){
 size(800,800); 
}


//Aquí guardamos la selección de la figura que queremos usar
void seleccion(){
    if (key == 'c' || key == 'C') {
      f = "c";
    }
    else if (key == 'r' || key == 'R') {
      f = "r";
    }
     else if (key == 't' || key == 'T') {
      f = "t";
    }
}



// Aquí dibujamos la figura que se seleccionó anteriormente
void figura(){
 if (f == "c"){
  ellipseMode(CENTER);
  ellipse(x , y , 100, 100); 
 }
 else if (f == "r"){
   rectMode(CENTER);
   rect(x , y , 100 , 100);
 }
 else if (f == "t"){
   triangle(x, y-80 , x-50 , y+30 , x+50 , y+30);
 }
}



// Aquí hacemos el movimiento de la figura
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - dy;
    }
    else if (keyCode == DOWN) {
      y = y + dy;
    } 
    else if (keyCode == LEFT) {
      x = x - dx;
    } 
    else if (keyCode == RIGHT) {
      x = x + dx;
    } 
  } 
}




// Aquí ejecutamos todo el conjunto de las funciones programadas anteriormente
void draw(){
  if(keyPressed && key == 'a'){
   c1 = random(255);
   c2 = random(255);
   c3 = random(255);   
  }
  else if (key == 'b'){
    c1 = 255;
    c2 = 255;
    c3 = 255;
    f = "c";
    C1 = 0;
    C2 = 0;
    C3 = 0;
  }  
  if(keyPressed && key == 's'){
   C1 = random(255);
   C2 = random(255);
   C3 = random(255);
  }
  background(c1,c2,c3);
  fill(C1,C2,C3);
  seleccion();
  figura();
}
