void setup(){
  size(480,480);
  noStroke();
  smooth();
  frameRate(5);
  background(255,255,255);
}
  
void draw(){
  apple(int(random(480)),int(random(480)));
  post(int(random(480)),int(random(480)));
  cherry(int(random(480)),int(random(480)));
}

void apple(int x,int y){
fill(255,50,50,random(255));
ellipse(x,y,120,100);//リンゴ本体
noFill();
strokeWeight(4);stroke(x-160,80,50,random(100));
arc(x,y-50, 60, 60, QUARTER_PI, HALF_PI+QUARTER_PI);
line(x,y-20,x,y-80);
noStroke();
fill(x-150,150,0,random(100));ellipse(x+20,y-60,40,10);//葉
}

void post(int x,int y){
fill(210,60,60,random(255));
rect(x,y,100,130);//ポスト本体
rect(x+35,y+130,30,50);//下部分
fill(255,255,255,random(200));
rect(x+20,y+20,70,10);//入れるところ
textSize(25);text("POST",x+25,y+80);
}

void cherry(int x,int y){
fill(250,50,100,random(255));
ellipse(x,y,50,50);//左の実
ellipse(x+60,y+10,55,55);//右の実
noFill();
strokeWeight(3);stroke(0,30,x-300,random(100));
arc(x+20,y-60,40,90,0,HALF_PI);//右枝
line(x+40,y-60,x+60,y-15);//左枝
noStroke();
fill(x-150,150,50,random(100));
ellipse(x+55,y-60,30,8);//葉
}
