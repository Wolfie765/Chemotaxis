 //declare bacteria variables here
 Bacteria [] colony;  
 void setup()   
 {   
 	size(350, 350);  
 	//initialize bacteria variables here
 	colony = new Bacteria[100];
 	for (int i = 0; i < colony.length; i++){
 		colony[i] = new Bacteria();
 	}
 }   

 void draw()   
 {    
 	//move and show the bacteria
 		background(180, 180, 180);
 		for (int i = 0; i < colony.length; i++){
 			colony[i].move();
 			colony[i].show();
 		}

 }
 	
 	
 	
 

 class Bacteria    
 {     
 	//lots of java!
 	int myX, myY, reed, greeen, bluue, sizze;   
 	Bacteria() //constructor
 	{
 		sizze = (int)(Math.random()*10)+5;
 		reed = (int)(Math.random()*255);
 		greeen = (int)(Math.random()*255);
 		bluue = (int)(Math.random()*255);

 		myX = 350 +(int)(Math.random()*21)-10;
 		myY = 350 +(int)(Math.random()*11)-10;
 	}
 	void show()
 	{
 		stroke(192, 192, 192);
 		fill(reed, greeen, bluue, 175);
 		ellipse(myX, myY, sizze, sizze);
 	}
 	void move(){
 		if(mouseX > myX && mouseY > myY)
 		{
 			myX = myX + (int)((Math.random()*6)-2);
 			myY = myY + (int)((Math.random()*6)-2);
 		}
 		else if(mouseX < myX && mouseY < myY)
 		{
 			myX = myX + (int)((Math.random()*6)-4);
 			myY = myY + (int)((Math.random()*6)-4);
 		}

 		else if(mouseX < myX && mouseY > myY)
 		{
 			myX = myX + (int)((Math.random()*6)-4);
 			myY = myY + (int)((Math.random()*6)-2);
 		}

 		else if(mouseX > myX && mouseY < myY)
 		{
 			myX = myX + (int)((Math.random()*6)-2);
 			myY = myY + (int)((Math.random()*6)-4);
 		}

 		else
 		{
 		myX = myX + (int)((Math.random()*3)-2);
 		myY = myY + (int)((Math.random()*3)-2);
 		}
 	}
 } 
 
