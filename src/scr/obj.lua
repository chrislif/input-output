local widget = require "widget"

Object = {}

function Object.createMenu(obj)
	local function submitEvent(event)
		if ("ended" == event.phase) then
			print("Submit")
		end
	end
	
	local function clearEvent(event)
		if ("ended" == event.phase) then
			print("Clear")
		end
	end

	obj.nameBox = native.newTextField(display.contentWidth/2, display.contentHeight/4, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/4 - 40,
		text = "Name",
		align = center,
	}
	obj.nameText = display.newText(textOptions)
	obj.dateBox = native.newTextField(display.contentWidth/2, display.contentHeight/2, display.contentWidth, 50)
	textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/2 - 40,
		text = "Date",
		align = center,
	}
	obj.dateText = display.newText(textOptions)
	local buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight/2 + 100,
		label = "Submit",
		labelAlign = center,
		labelColor = {default = {0,0,0}, over = {0,0,1}},
		shape = "roundedRect",
		onEvent = submitEvent
	}
	obj.submitButton = widget.newButton(buttonOptions)
	buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight/2 + 175,
		label = "Clear",
		labelAlign = center,
		labelColor = {default = {0,0,0}, over = {1,0,0}},
		shape = "roundedRect",
		onEvent = clearEvent
	}
	obj.clearButton = widget.newButton(buttonOptions)

end

return Object
