 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	frameRate(10);
 	bob = new Bacteria();
 	colony = new Bacteria [10];
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
  	//move and show the bacteria   
 	background(0);
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 	}
 	//myColor = (r,g,b);   
 	void walk()
 	{
 		myX = myX + (int)(Math.random()* 7) - 3;
 		myY = myY + (int)(Math.random()* 7) - 3;
 	}
 	void show()
 	{
 		ellipse(myX,myY,20,20);
 	}
