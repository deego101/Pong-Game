class Ball{
  float x;
  float y;
  float angle;
  float xs=-10;
  float ys=1;
  boolean notOut;
  float p;
  Ball(float x,float y,float angle){
    this.x=x;
    this.y=y;
    notOut=false;
    this.angle=angle;
    
  }


  void update(){
    x+=xs;
    y+=ys;
  }
  void show(){
    stroke(100);
    fill(255);
    ellipse(x,y,20,20);
  }
 
  void bound(Paddle p,Paddle p0){
    if(x>width-10){
      //xs*=-1;
      x=width/2;
      y=height/2;
      score1++;
      pause();
    }
    if(x<20){
      x=width/2;
      y=height/2;
      score2++;
      pause();
    }
    if(y>height-10||y<20){
      ys*=-1;
      notOut=false;
    }
    if(x>p0.x-20&&y>=p0.y&&y<=p0.y+p0.s*10){
      xs*=-1;
      notOut=true;
      head =false;
      r=random(-20,20);
    }
    if(notOut){
      float yd=this.y-(p0.y+p0.s*5);
      ys=3*yd/(p0.s*5);
    }
    notOut=false;
      if(x<p.x+20&&y>=p.y&&y<=p.y+p.s*10){
      xs*=-1;
      notOut=true;
      head=true;
      
    }
    if(notOut){
      float yd=this.y-(p.y+p.s*5);
      ys=4.4*yd/(p.s*5);
    }
    notOut=false;
    
    
  
  }
  
}
void pause(){
     startGame=false;
      p1.x=X;
      p1.y=Y;
      p2.x=X2;
      p2.y=Y2;
      b.xs=8.5;
      b.ys=0;
}