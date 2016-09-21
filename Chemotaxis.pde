 //declare bacteria variables here   
 Bacteria bob;
 Bacteria [] colony;
 Predator john;
 Predator [] pack;
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
 	pack = new Predator [5];
 	for (int j=0; j<pack.length; j++)
 	{
 		pack[j] = new Predator();
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
 class Predator
 {     
 	//lots of java!
 	int pX, pY;
 	int pColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	Predator()
 	{
 		pX = 0;
 		pY = 0;
 	}
 	void walk()
 	{
 		if (pX > 450)
 		{
 			pX = pX - (int)(Math.random()* 11);
 		}
 		if (pX < 0)
 		 {
 			pX = pX + (int)(Math.random()* 11);
 		}	
 		if (pY > 450)
 		{
 			pY = pY - (int)(Math.random()* 11);
 		}
 		if (pY < 0)
 		{
 			pY = pY + (int)(Math.random()* 11);
 		}
 		else
 		{
 			pX = pX + (int)(Math.random()* 23) - 11;
 			pY = pY + (int)(Math.random()* 23) - 11;
 		}
 	}
 	void show()
 	{
 		fill(0,200,255);
 		ellipse(pX,pY,20,20);
 	}
  } 