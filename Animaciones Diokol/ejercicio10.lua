
local rads = 5; --// angle de l'oscillation
local rayon = 400; --// longueur du cable du pendule
local rotation = PI/18;
local rotspeed = PI/50;
 
function setup() 
  size(500,500);
  smooth();
  frameRate(30);
  rectMode(CENTER);
end
 
 
function draw() 
 noStroke();
 fill(250,30);
  rect(width()/2,height()/2,500,500);
 
   
  rads =rads+ 0.075; --// incrémenter l'angle de l'oscillation
   
  local oscillation = math.cos(rads) * (PI/4) + (PI/2); --// calculer l'oscillation (toujours entre -1 et 1)
   
   
  -- convertir les coordonnées polaires en coordonnées cartésiennes
  -- et déplacer le point de référence au point 0,width/2
  local y = math.sin(oscillation) * rayon;
 local x = math.cos(oscillation) * rayon + width()/2;
   
  fill(math.random(20,180),math.random(10,60),60,math.random(90,99));
  stroke(math.random(20,180),math.random(10,60),60,math.random(90,99));
  line(width()/2,0,x,y);
  noStroke();
  pushMatrix();
  translate(x,y);
  rotate(rotation);
  translate(-x,-y);
  rect(x,y,math.random(20,60),50);
  popMatrix();
  rotation=rotation+rotspeed;
  
end

