Event = {}

function Event.submitInput(event)
	if ("ended" == event.phase) then
		print("Submit")
	end
end

function Event.clearInput(event)
	if ("ended" == event.phase) then
		print("Clear")
	end
end

return Event