-- RectNumAxis.lua

function RectNumAxisTicks(x, y, ext, pos, minn, maxn, tickInc, tickLen)
	local axisMode = 1
	if ((pos == LEFT) or (pos == BOTTOM)) then
		 axisMode = -1
	end

	local coord
	for v=minn,maxn,tickInc do
		coord = map(v, minn, maxn, 0, ext)
		if ((pos == TOP) or (pos == BOTTOM)) then
			line(x+coord,y,x+coord,y-tickLen*axisMode)
		elseif ((pos == LEFT) or (pos == RIGHT)) then
			line(x,y+coord,x+tickLen*axisMode,y+coord)
		end
	end
end

function RectNumAxisLabel(x, y, ext, pos, minn, maxn, tickInc, tickLen)
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

	for v=minn,maxn,tickInc do
		if ((pos == LEFT) or (pos == RIGHT)) then
			coord = map(v,maxn,minn,0,ext)
		else
			coord = map(v,minn,maxn,0,ext)
		end
		if ((pos == TOP) or (pos == BOTTOM)) then
			text(v,x+coord,5+y-(tickLen*2)*axisMode)
		elseif ((pos == LEFT) or (pos == RIGHT)) then
			text(v,x+(tickLen*2)*axisMode,5+y+coord)
		end
	end
end

function RectNumAxis(x, y, ext, pos, minn, maxn, tickInc, tickLen)
	stroke(0)
	strokeWeight(1)
	if ((pos == TOP) or (pos == BOTTOM)) then
		line(x,y,x+ext, y)
	elseif ((pos == LEFT) or (pos == RIGHT)) then
		line(x,y,x, y+ext)
	end
	RectNumAxisTicks(x,y,ext,pos,minn,maxn,tickInc,tickLen)
	fill(0)
	RectNumAxisLabel(x,y,ext,pos,minn,maxn,tickInc,tickLen)
end
