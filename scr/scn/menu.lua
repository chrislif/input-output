local composer = require "composer"
local widget = require "widget"

local scene = composer.newScene()

function scene:create(event)
	objects = {}
	objects.nameBox = nil
	objects.nameText = nil
	objects.dateBox = nil
	objects.dateText = nil
	objects.submitButton = nil
	objects.clearButton = nil

	objects.nameBox = native.newTextField(display.contentWidth/2, display.contentHeight/4, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/4 - 40,
		text = "Name",
		align = center,
	}
	objects.nameText = display.newText(textOptions)

	objects.dateBox = native.newTextField(display.contentWidth/2, display.contentHeight/2, display.contentWidth, 50)
	textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/2 - 40,
		text = "Date",
		align = center,
	}
	objects.dateText = display.newText(textOptions)

	local function submitEvent(event)
		if ("ended" == event.phase) then
			print("Submit")
		end
	end

	local buttonOptions = {
			x = display.contentWidth/2,
			y = display.contentHeight/2 + 100,
			label = "Submit",
			labelAlign = center,
			labelColor = {default = {0,0,0}, over = {0,0,1}},
			shape = "roundedRect",
			onEvent = submitEvent
		}

	objects.submitButton = widget.newButton(buttonOptions)


	local function clearEvent(event)
		if ("ended" == event.phase) then
			print("Clear")
		end
	end

	buttonOptions = {
			x = display.contentWidth/2,
			y = display.contentHeight/2 + 175,
			label = "Clear",
			labelAlign = center,
			labelColor = {default = {0,0,0}, over = {1,0,0}},
			shape = "roundedRect",
			onEvent = clearEvent
		}
		
	objects.clearButton = widget.newButton(buttonOptions)
end

function scene:show(event)

end

function scene:hide(event)

end

scene:addEventListener("create", scene)
scene:addEventListener("show",   scene)
scene:addEventListener("hide",   scene)

return scene