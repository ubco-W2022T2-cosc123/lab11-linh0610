//REQ: create a Button class here with the specs mentioned in the assignment document.
class Button {
  float x, y, w, h;
  color fillCol;
  String caption;
  Button(){
    this.x = width/2;
    this.y = height/2;
    this.w = 100;
    this.h  =40;
    this.fillCol = color(255);
    this.caption = "none";
  }
  Button(float tempX, float tempY, float tempW, float tempH, color tempFillCol, String tempCaption) {
    this.x = tempX;
    this.y = tempY;
    this.w = tempW;
    this.h = tempH;
    this.fillCol = tempFillCol;
    this.caption = tempCaption;
  }
  
  void display() {
    fill(fillCol);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    textSize(16);
    text(caption, x + w/2, y + h/2);
  }
  
  boolean mouseOver() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      return true;
    } else {
      return false;
    }
  }
}
