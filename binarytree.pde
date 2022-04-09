float angle=PI/8;
float hi=250;
void setup(){
  size(800,800);
  background(255);
  tree();
}
void draw(){
}
void tree(){
  translate(width/2,height);
  branch(hi);
}
void branch(float h){
  if(h>5){
  line(0,0,0,-h);
  translate(0,-h);
  pushMatrix();
  rotate(angle);
  branch(h*0.66);
  popMatrix();
  pushMatrix();
  rotate(-angle);
  branch(h*0.66);
  popMatrix();
  }
}