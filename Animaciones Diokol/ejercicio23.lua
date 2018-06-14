local r;

-- Angle and angular velocity, accleration
local theta;
local theta_vel;
local theta_acc;

function setup() 
  size(640, 360);
  
  -- Initialize all values
  r = height() * 0.45;
  theta = 0;
  theta_vel = 0;
  theta_acc = 0.0001;
end

function draw() 
  
  background(0);
  
  --Translate the origin point to the center of the screen
  translate(width()/2, height()/2);
  
  -- Convert polar to cartesian
  local x = r * math.cos(theta);
  local y = r * math.sin(theta);
  
  -- Draw the ellipse at the cartesian coordinate
  ellipseMode(CENTER);
  noStroke();
  fill(200);
  ellipse(x, y, 32, 32);
  
  -- Apply acceleration and velocity to angle (r remains static in this example)
  theta_vel =theta_vel+theta_acc;
  theta =theta+theta_vel;

end