require "src/RectCatAxis"

function setup()
	size(640,320)
end

function draw()
	background(255)
	
	local weekdays = {"Sun","Mon","Tue","Wed","Thu","Fri","Sat"}
	local months = {"Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"}
	
	pushMatrix()
	translate(80,30)
	RectCatAxis(100, 0, 150, LEFT, weekdays, 10)
	popMatrix()
	pushMatrix()
	translate(120,30)
	RectCatAxis(100, 0, 150, RIGHT, months, 10)
	popMatrix()
	pushMatrix()
	translate(200,80)
	RectCatAxis(100, 0, 300, TOP, months, 10)
	popMatrix()
	pushMatrix()
	translate(200,120)
	RectCatAxis(100, 0, 200, BOTTOM, weekdays, 10)
end
