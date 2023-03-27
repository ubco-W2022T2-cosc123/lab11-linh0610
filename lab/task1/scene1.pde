//REQ: put any variables required for your A9_Q1 animation 

void scene1() {
  old_code();
  //REQ: draw the HOME button here using the Button's display() function
    b1.display();

}

void old_code(){
  //REQ - Copy your code from the previous lab here (modify the code as needed, e.g. to fit the current sketch size)
  background(0);
//  translate(width/2,height/2);
  



  float a = 1, b = 1;
  float m1 = 2, m2 = 10;
  float n1 = 1.5, n2 = 1, n3 = 1;
  A9_Q1(a,b,m1,m2,n1,n2,n3);  //calling this function should draw the output of A9.Q1
  

  float a2 = 1, b2 = 1;
  float m12 = 88, m22 = 64;
  float n12 = -20, n22 = 1, n32 = 1;
  A9_Q1(a2, b2, m12, m22, n12, n22, n32);
}
void A9_Q1(float a, float b, float m1, float m2, float n1, float n2, float n3){
  //REQ - Copy your code from Q1 in assignment A9 here (modify the code as needed, e.g. to fit the current sketch size)
  //...YOUR CODE GOES HERE...
    colorMode(HSB, 360, 100, 100);
    float c = 0.0002;
    float col = 0;

    float r;
  float theta;
  float num1, num2, denom;
  float x, y;

    for(theta = 0; theta <= TWO_PI; theta += c) {
     stroke(col,100,100);

      

    num1 = abs(cos(m1 * theta / 4.0) / a);
    num1 = pow(num1, n2);
    
    num2 = abs(sin(m2 * theta / 4.0) / b);
    num2 = pow(num2, n3);
    
    denom = pow(num1 + num2, 1.0 / n1);
    r = pow(denom, -1);
    
    x = 100 * r * cos(theta);
    y = 100 * r * sin(theta);
    
    point(x+250 , y +250);
    col+= 0.01;

        
  }

}
