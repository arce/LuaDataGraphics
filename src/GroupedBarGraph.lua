-- GroupedBarGraph.lua
require "utilities"

function GroupedBar(x, y, w, h, data, colors, mode, gap, overlap, 
																			point, selected)

	local m = #data
	local n = #data[1]

	local minn = 0
	local maxn = tableMax(data)
	local section = w/n-gap
	local barWidth = map(overlap,0,1,section/m,section)
	local offset = map(overlap,0,1,section/m,0)
	local selection = {}

	for i=1,n do
		for j=1,m do
		    local size = 1
			local barHeight = map(data[j][i],minn,maxn,0,h)
			local pos = (i-1)*(section+gap)+(j-1)*offset+gap/2
			if selected[i..":"..j] then size = 3 end
			strokeWeight(size)
			fill(colors[j])
			if (mode == VERTICAL) then
				rect(x+pos, y+h-barHeight, barWidth, barHeight)
			--	if contains(point[1],point[2]) then
			--		selection[i..":"..j] = {x=point[1],y=point[2],data=data[j][i]};
			--	end
			elseif (mode == HORIZONTAL) then
				rect(x, y+pos, barHeight, barWidth)
				if contains(point[1],point[2]) then
					selection[i..":"..j] = {x=point[1],y=point[2],data=data[j][i]};
				end
			end
		end
	end
	return selection
end
