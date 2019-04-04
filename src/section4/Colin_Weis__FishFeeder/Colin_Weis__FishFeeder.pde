int foodX = 100;
int foodY = 20;
int foodSpeed = 1;
int score  = 0;
int bob = 0;
int eye = 0;

void setup () {
size(600, 700);
eye++;
}
void draw () {
background(#9AE4EA);
 fill(0, 0, 0);
  textSize(16);
  text("Score = " + score, 20, 20);
fill(#C67C20);
noStroke();
ellipse(foodX, foodY, 25, 25);
foodY = foodY + foodSpeed;
drawFish();
checkCatch(foodX, foodY);
if (foodY > 580) {
  foodY = 0;
  foodX = (int) random(width-20);
  bob++;
  if (bob == 5) {
  foodSpeed++;
  bob = 0;
  }
}
}
void drawFish(){
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-17+eye,mouseY-17,20+eye,20+eye); //back side eye
     fill(255,200,88);
     ellipse(mouseX,mouseY,90+eye,50+eye); //body
     triangle(mouseX+30+eye,mouseY+eye,mouseX+70+eye,mouseY+30+eye,mouseX+70+eye,mouseY-30+eye); //tail
     stroke(0);
     triangle(mouseX+eye,mouseY+eye,mouseX+15+eye,mouseY+10+eye,mouseX+15+eye,mouseY-10+eye); //side fin
     noStroke();
     fill(255,200,88);
     ellipse(mouseX,mouseY,15+eye,15+eye); //side fin cover
     noStroke();
     fill(255,255,255);
     ellipse(mouseX-25+eye,mouseY-15+eye,20,20); //front eye
     fill(0,0,0);
     ellipse(mouseX-25+eye,mouseY-15+eye,5,5); //pupil
     fill(141,233,237);
     ellipse(mouseX-45+eye,mouseY+eye,25,25); //mouth
}
void checkCatch(int x, int y){
     if(x > mouseX-45 && x < mouseX+70){
          if(y > mouseY-17 && y < mouseY+30){
               score++;
               foodY = 20; //if the food was eaten, make more food fall from the top
               foodX = (int) random(width-20);
              bob++;
               if (bob == 5) {
  foodSpeed++;
  bob = 0;
          }
     }
     else if (foodY > height && score > 0){
          score--;
     }
}

  
}