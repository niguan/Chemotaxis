 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 void setup()
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	frameRate(20);
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
 	background(200,0,0);
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	}
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 250;
 		myColor = (int)(Math.random()*256);
 	}
 	void walk()
 	{
 		// if (myX > 450 || myY > 450)
 		// {
 		// 	myX = myX -
 		// }
 		myX = myX + (int)(Math.random()* 7) - 3;
 		myY = myY + (int)(Math.random()* 7) - 3;
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,20,20);
 	} 
}