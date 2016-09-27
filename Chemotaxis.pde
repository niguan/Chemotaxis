 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 Predator john;
 Predator [] pack;
 void setup()
 {     
 	//initialize bacteria variables here   
 	size(550,500);
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
 void mousePressed()
 {
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
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 450;
 		myY = 400;
 		myColor = color(255,200,0);
 	}
 	void walk()
 	{
 		if (myX > 550)
 		{
 			myX = myX - (int)(Math.random()* 5);
 		}
 		if (myX < 0)
 		 {
 			myX = myX + (int)(Math.random()* 5);
 		}	
 		if (myY > 500)
 		{
 			myY = myY - (int)(Math.random()* 5);
 		}
 		if (myY < 0)
 		{
 			myY = myY + (int)(Math.random()* 5);
 		}

 		else
 		{
 			myX = myX + (int)(Math.random()* 17) - 8;
 			myY = myY + (int)(Math.random()* 17) - 8;
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
 		pX = 100;
 		pY = 100;
 		pColor = color(0,200,255);
 	}
 	void walk()
 	{
 		if (pX > 550)
 		{
 			pX = pX - (int)(Math.random()* 5);
 		}
 		if (pX < 0)
 		 {
 			pX = pX + (int)(Math.random()* 5);
 		}	
 		if (pY > 500)
 		{
 			pY = pY - (int)(Math.random()* 5);
 		}
 		if (pY < 0)
 		{
 			pY = pY + (int)(Math.random()* 5);
 		}
 		else
 		{
 			pX = pX + (int)(Math.random()* 17) - 8;
 			pY = pY + (int)(Math.random()* 17) - 8;
 		}
 	}
 	void show()
 	{
 		fill(pColor);
 		ellipse(pX,pY,10,10);
 	}
  }