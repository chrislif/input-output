local Database = require "scr.db"

Event = {}

function Event.submitInput(event)
	if ("ended" == event.phase) then
		Event.clearInput(event)
		obj.messageText.text = "Data Submitted"
	end
end

function Event.clearInput(event)
	if ("ended" == event.phase) then
		obj.nameBox.text = ""
		obj.dateBox.text = ""
		obj.messageText.text = "Cleared"
	end
end

return Event
