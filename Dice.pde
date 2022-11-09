Die joe;
int total = 0;
 void setup()
  {
      size(1000,1000);

      noLoop();
  }
  void draw()
  {
      //your code here
      background(255,255,255);
      total= 0;
      for(int x = 0; x<30; x++){
        for(int y = 0; y < 30; y++){
              joe = new Die(x*30,y*30);

      joe.show();
        }
      }
      text("Total = " + total, 800,950);
  }
  void mousePressed()
  {
      redraw();
  }
class Die //models one single dice cube
  {
      //member variable declarations here
      int dieNumber, dieX, dieY;
      Die(int x, int y) //constructor
      {
          //variable initializations here
          roll(); 
          dieX=x;
          dieY=y;
      }
      void roll()
      {
          //your code here
          dieNumber = (int)((Math.random()*6)+1);
          total = total+ dieNumber;
      }
      void show()
      {
          //your code here
          fill(255,255,255);
          rect(dieX,dieY,30,30);
          fill(0);
          if(dieNumber == 1){
            ellipse(dieX+15,dieY+15,3,3);
          } else if(dieNumber == 2) {
            ellipse(dieX+7.5,dieY+7.5,3,3);
            ellipse(dieX+22.5,dieY+22.5,3,3);
          }else if(dieNumber == 3){
            ellipse(dieX+15,dieY+15,3,3);
            ellipse(dieX+7.5,dieY+22.5,3,3);
            ellipse(dieX+22.5,dieY+7.5,3,3);
          }else if(dieNumber == 4){
            ellipse(dieX+7.5,dieY+22.5,3,3);
            ellipse(dieX+22.5,dieY+7.5,3,3);
            ellipse(dieX+22.5,dieY+22.5,3,3);
            ellipse(dieX+7.5,dieY+7.5,3,3);
          }else if(dieNumber == 5){
            ellipse(dieX+7.5,dieY+22.5,3,3);
            ellipse(dieX+22.5,dieY+7.5,3,3);
            ellipse(dieX+22.5,dieY+22.5,3,3);
            ellipse(dieX+7.5,dieY+7.5,3,3);
            ellipse(dieX+15,dieY+15,3,3);
          }else if(dieNumber == 6){
            ellipse(dieX+7.5,dieY+22.5,3,3);
            ellipse(dieX+22.5,dieY+7.5,3,3);
            ellipse(dieX+22.5,dieY+22.5,3,3);
            ellipse(dieX+7.5,dieY+7.5,3,3);
            ellipse(dieX+7.5,dieY+15,3,3);
            ellipse(dieX+22.5,dieY+15,3,3);
          }

      }
  }

