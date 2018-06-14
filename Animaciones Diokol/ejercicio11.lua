

local x = 240;   
local y = 0;     

local speed = 0;  

local gravity = 0.1;  

function setup() 
  size(480, 270);
end

function draw() 
  background(255);

  
  fill(175);
  stroke(0);
  --rectMode(CENTER);
  rect(x, y, 10, 10);

  y = y + speed;


  speed = speed + gravity;


  if y>height() then
    speed = speed * -0.95;
    y = height();
  end
end