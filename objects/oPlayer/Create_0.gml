/// code that runs once when oPlayer is created
// how many pixels per frame we want out player to move
xSpeed=4;

// what direction the player is facing. 1 = right -1 =left, 0 = not moving at all (facing front)
xDirection=0;

// directional movment variables
xVector = xSpeed * xDirection

yVector = 0;

// setting gravity
grv = .45;

jumpForce = -15;

//coins and points
global.points = 0;

