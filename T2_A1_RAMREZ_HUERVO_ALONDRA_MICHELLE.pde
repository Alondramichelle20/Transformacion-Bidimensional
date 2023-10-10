float sesgoX = 0; // Sesgo horizontal
 float sesgoY = 0; // Sesgo vertical
 float x = 55.0;
 float y = 225;
 float velocidadX = 7.0;
 float velocidadY = 2.0;
 float radio = 55.0;
 int directionX = 1;
 int directionY = -1;
 float ang=0;
 float vel=1;
 int a=0;
float X, Y; // Coordenadas del centro de la elipse
float diametroX, diametroY; // Ancho y alto de la elipse
 void setup(){
   size(500,500);
   X = width / 2;
   Y = height / 2;
  diametroX =200;
  diametroY = 200;
 }
 
 void draw(){
   background(0);
    sesgo();
   traslacion();
   rotacion();
   escala();
  
  }
   
   void traslacion(){
    if(key=='a'){  
      fill(#28EADF);
   rect(x,y,radio,radio);
   x +=velocidadX * directionX;
   if((x>width - radio) || (x < radio)){
  directionX = -directionX;


   if((Y>height - radio) || (Y < radio)){
  directionY = -directionY;
   }
  }
 }
}
   void rotacion(){
     if(key=='b'){  
  fill(#EA28DE);
  translate(width/2,height/2);
  rotate(radians(ang));
  rect(100,100,100,100);
  ang=ang+vel;
  }
}
   
   
  void escala(){
  if(key=='c'){  
  fill(#710E6B);
  rectMode(CENTER);
  square(250,250,a);
  if(a>500){
    a=0;}
    a=a+1;
     
   }
}
 void sesgo(){
   if(key=='d'){
   fill(#AF0C46);
   translate(X,Y);
   noStroke();
   ellipse(0, 0, diametroX, diametroY);
   }
 }
 void mousePressed() {
  // Cambia aleatoriamente el ancho (diámetroX) y alto (diámetroY) de la elipse
  diametroX = random(20, 200); // Ancho aleatorio entre 20 y 200
  diametroY = random(20, 200); // Alto aleatorio entre 20 y 200

}
