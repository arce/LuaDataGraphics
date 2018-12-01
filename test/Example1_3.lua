require "RectCatAxis"

function setup()
	size(640,320)
	f = loadFont("data/Vera.ttf",11)
	textFont(f)
end

function draw()
	background(255)
	
	local weekdays = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}
	local months = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}
	
	pushMatrix()
	translate(80,30)
	RectCatAxis(150, LEFT, weekdays, 10)
	popMatrix()
	pushMatrix()
	translate(120,30)
	RectCatAxis(150, RIGHT, months, 10)
	popMatrix()
	pushMatrix()
	translate(200,80)
	RectCatAxis(250, TOP, months, 10)
	popMatrix()
	pushMatrix()
	translate(200,120)
	RectCatAxis(200, BOTTOM, weekdays, 10)
end
