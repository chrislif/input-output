local widget = require "widget"
local Event = require "scr.event"

Object = {}

local function createNameInput(obj)
	obj.nameBox = native.newTextField(display.contentWidth/2, display.contentHeight/4, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/4 - 40,
		text = "Name",
		align = center,
	}
	obj.nameText = display.newText(textOptions)
end

local function createDateInput(obj) 
	obj.dateBox = native.newTextField(display.contentWidth/2, display.contentHeight/2, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/2 - 40,
		text = "Date",
		align = center,
	}
	obj.dateText = display.newText(textOptions)
end

local function createSubmitButton(obj)
	local buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight/2 + 100,
		label = "Submit",
		labelAlign = center,
		labelColor = {default = {0,0,0}, over = {0,0,1}},
		shape = "roundedRect",
		onEvent = Event.submitInput
	}
	obj.submitButton = widget.newButton(buttonOptions)
end

local function createClearButton(obj)
	local buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight/2 + 175,
		label = "Clear",
		labelAlign = center,
		labelColor = {default = {0,0,0}, over = {1,0,0}},
		shape = "roundedRect",
		onEvent = Event.clearInput
	}
	obj.clearButton = widget.newButton(buttonOptions)
end

function Object.createMenu(obj)
	createNameInput(obj)
	createDateInput(obj)
	createSubmitButton(obj)
	createClearButton(obj)
end

return Object
