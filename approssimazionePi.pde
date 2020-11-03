float r = 500;
int total =0;
int circle =0; 
void setup(){
  size(1002,1002);
  background(0);
  translate(width/2,height/2);
  stroke(255);
  strokeWeight(2);
  noFill();
  ellipse(0,0,r*2,r*2);
  rectMode(CENTER);
  rect(0,0,r*2,r*2);
 
  
}

void draw(){
  translate(width/2,height/2);
  for(int i = 0; i<5000;i++){
    float x = random(-r,r);
    float y = random(-r,r);
    float d = x*x+y*y;
    total++;
    if (d<r*r){
      stroke(0,255,0);
      circle++;
    }else{
      stroke(255,0,0);
    }
    point(x,y);
  }
  double pi = 4*((double)circle/total);
  println(pi);
}
