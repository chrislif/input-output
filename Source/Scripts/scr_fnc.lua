Function = {}

function Function.tableLength(t)
	local count = 0
	for i in pairs(t) do
		count = count + 1
	end
	
	return count
end

return Function