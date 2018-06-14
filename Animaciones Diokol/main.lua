local grid
local mouseX=0
local mouseY=0
local num=0

function setup()
	size(640, 480)
	grid = loadGrid('data/alt_cr.asc')
end

function draw() 
	background(255)
	image(grid,100,40)
end

function split(s, delimiter)
    local result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

function loadGrid(filename)
	local grid
    local file = io.open(filename, "rb")
	local ncols = tonumber(split(file:read("*line"),' ')[2])
	local nrows = tonumber(split(file:read("*line"),' ')[2])
	file:read("*line"); file:read("*line")
	file:read("*line"); file:read("*line")
	grid = createImage(nrows,ncols)
	local pixels = loadPixels(grid)
	for i=0,nrows-1 do
		tokens = split(file:read("*line"),' ')
		--print(nrows)
		for j=1,ncols do
			print(tonumber(tokens[i*nrows+j]))
			if tonumber(tokens[i*nrows+j]) == -9999 then
				--print(tonumber(tokens[i*nrows+j]))
				--print("hola")
				pixels[i*nrows+j] = color(20, 154, 208, 500)
			else
				--print(tonumber(tokens[i*nrows+j]))
				if tonumber(tokens[i*nrows+j]) == 12 then
					--print(tonumber(tokens[i*nrows+j]))
					pixels[i*nrows+j] = color(245, 249, 132, 500)
				elseif tonumber(tokens[i*nrows+j])<1000 then
					pixels[i*nrows+j] = color(231, 236, 51, 500)
				elseif tonumber(tokens[i*nrows+j]) < 1500 then
					pixels[i*nrows+j] = color(176, 115, 16, 500)
				elseif tonumber(tokens[i*nrows+j]) < 2000 then
					pixels[i*nrows+j] = color(205, 60, 17, 500)
				elseif tonumber(tokens[i*nrows+j]) < 2500 then
					pixels[i*nrows+j] = color(179, 180, 173, 500)
				elseif tonumber(tokens[i*nrows+j]) < 3000 then
					pixels[i*nrows+j] = color(164, 170, 162, 500)
				elseif tonumber(tokens[i*nrows+j]) < 4000 then
					pixels[i*nrows+j] = color(255, 255, 255, 500)
				else
					pixels[i*nrows+j] = tokens[j]
				end
			end
		end
	end
	updatePixels(grid,pixels)
	return grid
end