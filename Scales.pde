void setup(){
  size(1200,600);
}
  

void octsqu(int x, int y){
  int v1=12;
  int v2=3;
  int v3=4;
  int v4=6;
  fill(0,0,255);
  beginShape();
  for(int i=1; i<=v1;i++){
    vertex(x+int(Math.round(52*Math.cos(PI/v1+i*PI/6+PI/12))),y+(int)(52*Math.sin(PI/v1+i*PI/6+PI/12)));
  }
  endShape(CLOSE);
  fill(0,255,0);
  beginShape();
  for(int i=2; i<=15;i=i+2){
    vertex(x+int(Math.round(52*Math.cos(PI/v1+i*PI/6+PI/12))),y+(int)(52*Math.sin(PI/v1+i*PI/6+PI/12)));
  }
  
  endShape(CLOSE);
  fill(255,0,0);
  beginShape();
  for(int i=2;i<=12;i=i+4){
    vertex(x+int(Math.round(52*Math.cos(PI/v1+i*PI/6+PI/12))),y+(int)(52*Math.sin(PI/v1+i*PI/6+PI/12)));
  }
  
  endShape(CLOSE);
  fill(255);
  ellipse(x,y,30,30);
  fill(0,255,0);
  fill(0);
  
  ellipse(x+(int)((7*(mouseX-x))/(Math.sqrt(Math.pow(mouseX-x,2)+Math.pow(mouseY-x,2)))),y+(int)(((7*(mouseY-y))/(Math.sqrt(Math.pow(mouseX-x,2)+Math.pow(mouseY-x,2))))),15,15);
  fill(0,255,0);
  
  beginShape();
  for(int i=1; i<=v3;i++){
   vertex(x+60+int(Math.round(18*Math.cos(PI/v3+i*2*PI/v3-PI/12))),y+37+(int)(18*Math.sin(PI/v3+i*2*PI/v3-PI/12)));
  }
  
  endShape(CLOSE);
void draw(){
  background(255,0,0);
  for(int i=-100; i<=1500; i+=96){
    for(int j=-100; j<=1000; j+=96){
      octsqu(i+(int)(24*j/96),j-(int)(23*i/96));
      System.out.println(mouseX);
      System.out.println(mouseY);
    }
  }
}
