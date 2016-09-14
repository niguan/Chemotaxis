 //declare bacteria variables here   
 Baacteria bob
 void setup()   
 {     
 	//initialize bacteria variables here   
 	size(500,500);
 	bob = new Bacteria();
 }   
 void draw()   
 {    
  	//move and show the bacteria   
 	background(0);
 	bob.walk();
 	bob.show();
 }  
 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY;
 	bob()
 	{
 		myX = 250;
 		myY = 250;
 	}
 	//myColor = (r,g,b);   
 	void walk()
 	{
 		myX = myX + (int)(Math.random()* 11 - 5);
 	}
 	
 }    