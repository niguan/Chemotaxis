 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 Predator john;
 Predator [] pack;
 void setup()
 {     
 	//initialize bacteria variables here   
 	size(700,500);
 	frameRate(25);
 	bob = new Bacteria();
 	colony = new Bacteria [250];
 	for (int i=0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	john = new Predator();
 	pack = new Predator [250];
 	for (int j=0; j<pack.length; j++)
 	{
 		pack[j] = new Predator();
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
	for (int j=0; j<pack.length; j++)
 	{
 		pack[j].walk();
 		pack[j].show();
 	} 
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 400;
 		myY = 250;
 		myColor = color(255,200,0);
 	}
 	void walk()
 	{
 		if (myX > 350)
 		{
 			myX = myX - (int)(Math.random()* 5);
 		}
 		if (myX < 0)
 		 {
 			myX = myX + (int)(Math.random()* 5);
 		}	
 		if (myY > 250)
 		{
 			myY = myY - (int)(Math.random()* 5);
 		}
 		if (myY < 0)
 		{
 			myY = myY + (int)(Math.random()* 5);
 		}

 		else
 		{
 			myX = myX + (int)(Math.random()* 11) - 5;
 			myY = myY + (int)(Math.random()* 11) - 5;
 		}
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX,myY,10,10);
 	}
  } 
 class Predator
 {     
 	//lots of java!
 	int pX, pY, pColor;
	Predator()
 	{
 		pX = 0;
 		pY = 0;
 		pColor = color(0,200,255);
 	}
 	void walk()
 	{
 		if (pX > 350)
 		{
 			pX = pX - (int)(Math.random()* 5);
 		}
 		if (pX < 0)
 		 {
 			pX = pX + (int)(Math.random()* 5);
 		}	
 		if (pY > 250)
 		{
 			pY = pY - (int)(Math.random()* 5);
 		}
 		if (pY < 0)
 		{
 			pY = pY + (int)(Math.random()* 5);
 		}
 		else
 		{
 			pX = pX + (int)(Math.random()* 11) - 5;
 			pY = pY + (int)(Math.random()* 11) - 5;
 		}
 	}
 	void show()
 	{
 		fill(pColor);
 		ellipse(pX+200,pY+ 250,10,10);
 	}
  }