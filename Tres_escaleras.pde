int cont=0;
int barra=0;
int fila=0;
float x=200;
float y = 100;

void setup(){
  size(900,900);
}

void draw(){
 while(barra < 3){
   while(fila < 10){
     rect(x,y,100,20);
     y = y + 20;
     fila += 1;
   }
   x = x + 200;
   y = 100;
   barra += 1;
   fila = 0;
 }
}
