Ball b;
Paddle p1;
Paddle p2;
boolean startGame=false;
boolean head=false;
boolean up=false,down=false;
float r;
float X,X2;
float Y,Y2;
int score1=0;
int score2=0;
void setup(){
  size(600,600);
  
  p1=new Paddle(20,height/2-50,true);
  p2=new Paddle(width-40,height/2-50,true);
  b=new Ball(width/2,height/2,45);
  Y=(height/2)-p1.s*5;
  X=20;
  X2=width-40;
  Y2=height/2-50;
}


void draw(){
  background(0);
  float y=0;
  textSize(20);
  text("Score: "+score1,40,40);
  text("Score: "+score2,width-150,40);
  if(!startGame){
    b.show();
    p1.show();
    p2.show();
  }
  while(y<680){
    stroke(255);
    line(width/2,y,width/2,y+20);
    y+=40;
  }
  if(startGame){
  b.update();
  b.bound(p1,p2);
  p1.move(up,down);
  p2.dir(b);
 // p1.dir(b);
  b.show();
  p1.show();
  p2.show();
  }
  
}

void keyReleased(){
  up=false;
  down=false;
}
void keyPressed(){
  if(keyCode==UP){
   // p1.move(0,-1);
   up=true;
  }
  if(keyCode==DOWN){
    //p1.move(0,1);
    down=true;
  }
  if(key==' '){
    startGame=true;
  }
}