 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 Predator john;
 Predator [] colony;
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
 	john = new Predator();
 	colony = new Predator [5];
 	for (int j=0; int j<colony.length; j++)
 	{
 		colony[j] = new Predator();
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
	for (int i=0; i<colony.length; i++)
 	{
 		colony[i].walk();
 		colony[i].show();
 	} }  
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
 		if (myX > 450)
 		{
 			myX = myX - (int)(Math.random()* 11);
 		}
 		if (myX < 0)
 		 {
 			myX = myX + (int)(Math.random()* 11);
 		}	
 		if (myY > 450)
 		{
 			myY = myY - (int)(Math.random()* 11);
 		}
 		if (myY < 0)
 		{
 			myY = myY + (int)(Math.random()* 11);
 		}

 		else
 		{
 			myX = myX + (int)(Math.random()* 23) - 11;
 			myY = myY + (int)(Math.random()* 23) - 11;
 		}
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,20,20);
 	} 
}