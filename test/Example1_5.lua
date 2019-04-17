require "src/Legend"

function setup()
	size(640,320)
end

function draw()
	background(255)

	local weekdays = {"Sun","Mon","Tue"}
	local colors = {0xFF0000,0x00FF00,0x0000FF}
	pushMatrix()
	translate(50,50)
	Legend(10,10,10,10,weekdays,colors,VERTICAL,10)
	popMatrix()
	translate(150,50)
	Legend(10,10,10,10,weekdays,colors,HORIZONTAL,15)
end

