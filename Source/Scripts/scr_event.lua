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
		obj.nameBox.textField.text = ""
		obj.dateBox.textField.text = ""
		obj.messageText.text = "Cleared"
	end
end

function Event.gotoManage(event)
	composer.gotoScene("Scenes.mnu_manage")
end

function Event.gotoDatabase(event)
	composer.gotoScene("Scenes.mnu_battle")
end

function Event.gotoBack(event)
	composer.gotoScene("Scenes.mnu_main")
end

function Event.startup()
	print("--- Event Startup ---")
	
	print("\n")
	Database.startup()
end

return Event
