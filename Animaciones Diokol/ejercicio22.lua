local mouseX = 0
local mouseY = 0

function setup() 
	size(640, 360);
	background(102);
end
  
  function draw() 
	-- Call the variableEllipse() method and send it the
	-- parameters for the current mouse position
	-- and the previous mouse position
	variableEllipse(mouseX, mouseY, math.sin(mouseX+3), mouseY+3);
  end
  
  
  -- The simple method variableEllipse() was created specifically 
  -- for this program. It calculates the speed of the mouse
  -- and draws a small ellipse if the mouse is moving slowly
  -- and draws a large ellipse if the mouse is moving quickly 
  
  function variableEllipse(x,y,px,py)
	speed = abs(x-px) + abs(y-py);
	stroke(speed);
	ellipse(x, y, speed, speed);
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
  --Processing was initiated by 