void setup () {
size (500,500);
background(0,125,125);}

void draw (){
if(mousePressed){
fill(0,255,0);}
else{
fill(68,204,255);
}
ellipse (mouseX,mouseY,30,30);
ellipse (mouseX,mouseY,30,30);
arc(mouseX, mouseY, 50, 50, 0, PI+QUARTER_PI, OPEN);
}

