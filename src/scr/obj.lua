local widget = require "widget"
local Event = require "scr.event"

Object = {}

local function createNameInput()
	obj.nameBox = native.newTextField(display.contentWidth/2, display.contentHeight/4, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/4 - 40,
		text = "Name",
		align = center,
	}
	obj.nameText = display.newText(textOptions)
end

local function createDateInput() 
	obj.dateBox = native.newTextField(display.contentWidth/2, display.contentHeight/2, display.contentWidth, 50)
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/2 - 40,
		text = "Date",
		align = center,
	}
	obj.dateText = display.newText(textOptions)
end

local function createSubmitButton()
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

local function createClearButton()
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

local function createMessageText()
	local textOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight,
		text = "Message",
		align = center,
	}
	obj.messageText = display.newText(textOptions)
end

function Object.createMenu()
	createNameInput()
	createDateInput()
	createSubmitButton()
	createClearButton()
	createMessageText()
end

return Object
