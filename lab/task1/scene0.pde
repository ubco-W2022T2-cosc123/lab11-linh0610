
void scene0(){  //home screen

  background(0);
  //REQ: copy your code from the previous lab (and make any necessary changes) to display a welcome message followed by the PLAY button. 
  //     The PLAY button must be drawn using the Button's display function.
  background(0); 

  fill(255);
  textSize(50);
  textAlign(CENTER, CENTER);
  text("WELCOME!", width/2, height/3);
  textSize(30);
  text("press the button below", width/2, height/2.5);
  
  // display the PLAY button
  b0.display();


}
