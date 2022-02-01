// code that runs every frame

// keyyboard check and inputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

// Horizontal movement
xDirection = right - left;
xVector =xSpeed * xDirection;

// check to see if there is a wall, and if there is, stop movment, if there isn't continue movement
if (place_meeting(x + xVector, y, oWall))
   {
	   //check one pixel to the left or right of us until we collide with a oWall
	   // ! meants "not"
	   while(!place_meeting(x + xVector, y, oWall))
	   {
	   //only move 1 pixel at a time until you hit a oWall
	   x = x + xDirection;
	   }
	   xVector = 0;
	   
   }
// otherwise move normal
x = x + xVector;

//Vertical movement
yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
   {
	   //check one pixel to the up or down of us until we collide with a oWall
	   // ! meants "not"
	   //"sign is going to return the positive or negative sign for a value (-1, +1)
	   //sign(yVector) if yVector is positve it will return a positive 1, and if it is negative then it will return negative
	   while(!place_meeting(x, y + sign(yVector), oWall))
	   {
	   //only move 1 pixel at a time until you hit a oWall
	   y = y + sign(yVector);
	   }
	   yVector = 0;
   }
   //otherwise move normal
y = y + yVector

//if we are touching the ground and we press the jump key, jump
if (place_meeting(x, y + 1, oWall) and (jump))
{
	yVector = jumpForce;
}

//die in a pit and restart level
if (y >= room_height)

{
	room_restart();
}


