require "src/RectNumAxis"

function setup()
	size(640,320)
end

function draw()
	background(255)
	
	pushMatrix()
	translate(100,20)
	RectNumAxis(150, 0, 100, LEFT, 0, 100, 10, 10)
	popMatrix()
	pushMatrix()
	translate(150,20)
	RectNumAxis(150,0, 100, RIGHT, 0, 10, 1, 10)
	popMatrix()
	pushMatrix()
	translate(240,180)
	RectNumAxis(150, 0, 100, TOP, 0, 10, 1, 10)
	popMatrix()
	translate(240,120)
	RectNumAxis(150, 0, 200, BOTTOM, 0, 100, 10, 10)
end
