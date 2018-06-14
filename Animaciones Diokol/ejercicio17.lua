local rad = 60;        -- Width of the shape
local xpos=1
local ypos=1;    -- Starting position of shape    

local xspeed = 2.8;  -- Speed of the shape
local yspeed = 2.2;  -- Speed of the shape

local xdirection = 1;  -- Left or Right
local ydirection = 1;  -- Top to Bottom


function setup() 

  size(640, 360);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  -- Set the starting position of the shape
  xpos = width()/2;
  ypos = height()/2;
end

function draw() 
  background(102);
  
  -- Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  -- Test to see if the shape exceeds the boundaries of the screen
  -- If it does, reverse its direction by multiplying by -1
  if xpos>width() or xpos<rad then
    xdirection =xdirection*-1;
  end
  if ypos>height() or ypos<rad then
    ydirection = ydirection*-1;
  end

  -- Draw the shape
  ellipse(xpos, ypos, rad, rad);
end