local mouseX = 0;
local mouseY = 0;

function setup() 
    size(480, 270);
end
  
  function draw() 
    background(0);
  
    --// Start with i as 0
    local i = 0;
  
   -- // While i is less than the width of the window
    while i<width() do
      noStroke();
      --// The distance between the current rectangle 
      --// and the mouse is equal to the absolute value 
      --// of the difference between i and mouseX.
      local distance = abs(mouseX - i); 
      
      --// That distance is used to fill the color of 
      --// a rectangle at horizontal location i.
      fill(distance);
      rect(i, 0, 10, height());
      --// Increase i by 10
      i = i+10;
    end
end

function mouseMoved(x,y)
    mouseX = x
    mouseY = y
  end

  function abs(k)
    if k<0 then
        k = k*-1
    else 
        k = k
    end
    return k
end