-- Legend.lua

function Legend(x,y,w,h,items,colors,mode,gap)

	local n = #items

	--textBaseline(CENTER)
	if (mode==VERTICAL) then
		textAlign(LEFT)
	elseif (mode==HORIZONTAL) then
		textAlign(CENTER)
	end

	stroke(0)
	strokeWeight(1)
	for i=1,n do
		fill(colors[i])
		if (mode==VERTICAL) then
			rect(x, y+(h+gap)*i, w, h)
		elseif (mode==HORIZONTAL) then
			rect(x+(w+gap)*i, y, w, h);
		end
	end
	fill(0)
	for i=1,n do
		if (mode==VERTICAL) then
			text(items[i], x+(w+gap), y+(h+gap)*i+h/2)
		elseif (mode==HORIZONTAL) then
			text(items[i], x+(w+gap)*i+w/2, y+h+gap)
		end
	end
end
