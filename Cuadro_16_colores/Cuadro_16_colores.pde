float c1 = 0;
float c2 = 0;
float c3 = 0;
float y = 0;

void setup(){
 size(1600,1600);
}

void draw(){
while(y < 16){
   for(int x=0 ; x < 16 ; x++){
   c1 = x*10 + y*15;
   c2 = 255-x*10+ (y)*5;
   c3 = 100+x*8 + y*5;
   fill(c1 , c2 , c3);
   rect(x*100 , y*100 , 100 , 100);
  }
  y = y + 1;
}
}
