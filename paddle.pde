class Paddle{
  float x;
  float y;
  float xs=2;
  float ys=5;
  float s;
  boolean ai=false;
 
  public Paddle(float x_,float y_,boolean ai){
    x=x_;
    y=y_;
    this.s=10;
    this.ai=ai;
  }
  void move(boolean x,boolean y){
    if(x){
      this.y+=ys*-1;
    }
    if(y){
      this.y+=ys*1;
    }
  }
  void dir(Ball ball){
  
    if(ai){
      ys=(ball.y-(y+s*5-20));
      y+=ys*0.09;
    }
  }
  
  void show(){
    fill(255);
    rect(x,y,s,s*10);
  }
}