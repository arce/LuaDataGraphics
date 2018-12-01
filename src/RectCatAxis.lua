-- RectCatAxis.lua

function RectCatAxisTicks(x, y, ext, pos, items, tickLen)
	local axisMode = 1
	if ((pos == LEFT) or (pos == BOTTOM)) then
		axisMode = -1
	end

	local size = #items
	local inc = ext/size

	local i = 0
	while (i <= ext) do
		if ((pos == TOP) or (pos == BOTTOM)) then
			line(x+i, y, x+i, y-tickLen*axisMode)
		elseif ((pos == LEFT) or (pos == RIGHT)) then
			line(x, y+i,x+tickLen*axisMode, y+i)
		end
		i = i + inc
	end
end

function RectCatAxisLabels(x, y, ext, pos, items, tickLen)
	local axisMode = 1
	if ((pos == LEFT) or (pos == BOTTOM)) then
		axisMode = -1
	end
	
	local anchorMode = CENTER
	if (pos == LEFT) then
		anchorMode = RIGHT
	elseif (pos == RIGHT) then
		anchorMode = LEFT
	end
	textAlign(anchorMode)

	local size = #items
	local inc = ext/size

	local n = 1
	local i = 0
	while (n <= size) do
		local label = items[n]
		if ((pos == TOP) or (pos == BOTTOM)) then
			text(label,x+i+(inc/2), y-(tickLen*2)*axisMode)
		elseif ((pos == LEFT) or (pos == RIGHT)) then
			text(label,x+(tickLen*2)*axisMode,y+i+inc/2)
		end
		i = i + inc
		n = n + 1
	end
end

function RectCatAxis(x, y, ext, pos, items, tickLen)
	stroke(0)
	strokeWeight(1)
	if ((pos == TOP) or (pos == BOTTOM)) then
		line(x,y,x+ext, y)
	elseif ((pos == LEFT) or (pos == RIGHT)) then
		line(x,y, x, y+ext)
	end
	RectCatAxisTicks(x,y,ext,pos,items,tickLen)
	fill(0)
	RectCatAxisLabels(x,y,ext,pos,items,tickLen)
end
