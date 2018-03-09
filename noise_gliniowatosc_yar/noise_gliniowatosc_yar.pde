
//nacisnąć prawy przycisk żeby zrobić zdjęcie


float xoff = 0.05;
int textcolour = 80;


void setup() {
  size(720, 720);
  background(50);
  noiseSeed(0);
  stroke(100, 20);
  fill(textcolour);
    text("naciśnij przycisk myszki żeby zmazać", 20,20);
}


void draw() {
    if (mouseButton == LEFT) {
        background(50);
        fill(textcolour);
            text("naciśnij przycisk myszki żeby zmazać", 20,20);
        delay(100);} //<>//
        
  xoff = xoff + .01;
  float m = noise(xoff);
  float n = m * width; //<>//
  println(n);
 
    stroke(n/4, 100);
 
  line(mouseX, 0, n, height);
  line(0, mouseY, width, n);
  //text("naciśnij przycisk myszki żeby zmazać", 20,20);
  
  if (mouseButton == RIGHT) {
    saveFrame("pictures/pic_####.png");
        delay(100);}
  
}

void keyPressed()  //save the framme when we press the letter s
{
  if (key == 's' || key =='S')
  {
    saveFrame("pictures/pic_####.png");
  }
}