local composer = require "composer"
local Database = require "Scripts.scr_data"

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

function Event.gotoAdd(event)
	composer.gotoScene("Scenes.mnu_add")
end

function Event.gotoDatabase(event)
	
end

function Event.startup()
	print("--- Event Startup ---")
	
	print("\n")
	Database.startup()
end

return Event
