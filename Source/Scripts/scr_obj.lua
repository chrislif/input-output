local widget = require "widget"
local Event = require "Scripts.scr_event"

Object = {}

local function createNameInput()
	local boxOptions = {
		x = display.contentCenterX,
		y = display.contentHeight/4,
		width = 250,
		height = 50,
		fontSize = 18
	}
	obj.nameBox = widget.newTextField(boxOptions)
	scene.view:insert(obj.nameBox)
	
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/4 - 40,
		text = "Name",
		align = center
	}
	obj.nameText = display.newText(textOptions)
	scene.view:insert(obj.nameText)
end

local function createDateInput() 
	local boxOptions = {
		x = display.contentCenterX,
		y = display.contentCenterY,
		width = 250,
		height = 50,
		text = "Hello World!",
		fontSize = 18
	}
	obj.dateBox = widget.newTextField(boxOptions)
	scene.view:insert(obj.dateBox)
	
	local textOptions = {
		x = display.contentWidth/4 - 20,
		y = display.contentHeight/2 - 40,
		text = "Date",
		align = center
	}
	obj.dateText = display.newText(textOptions)
	scene.view:insert(obj.dateText)
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
	scene.view:insert(obj.submitButton)
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
	scene.view:insert(obj.clearButton)
end

local function createMessageText()
	local textOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight,
		text = "Message",
		align = center
	}
	obj.messageText = display.newText(textOptions)
	scene.view:insert(obj.messageText)
end

local function createManageButton()
	local buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight/3,
		label = "Manage Character",
		labelAlign = center,
		labelColor = {default = {0,0,0}, over = {0,1,0}},
		shape = "roundedRect",
		onEvent = Event.gotoManage
	}
	obj.clearButton = widget.newButton(buttonOptions)
	scene.view:insert(obj.clearButton)
end

local function createBattleButton()
	local buttonOptions = {
		x = display.contentWidth/2,
		y = display.contentHeight*(2/3),
		label = "Start Battle",
		labelAlign = center,
		labelColor = {default = {0, 0, 0}, over = {0, 1, 0}},
		shape = "roundedRect",
		onEvent = Event.gotoDatabase
	}
	obj.battleButton = widget.newButton(buttonOptions)
	scene.view:insert(obj.battleButton)
end

local function createBackButton()
	local buttonWidth = 50
	local buttonHeight = 50
	
	local buttonOptions = {
	x = display.contentWidth - buttonWidth,
	y = 0,
	label = "Back",
	labelAlign = center,
	labelColor = {default = {0, 0, 0}, over = {0, 1, 0}},
	shape = "roundedRect",
	width = buttonWidth,
	height = buttonHeight,
	onEvent = Event.gotoBack
	}
	
	obj.backButton = widget.newButton(buttonOptions)
	scene.view:insert(obj.backButton)
end

function Object.createBattleMenu()
	createBackButton()
end

function Object.createManageMenu()
	createNameInput()
	createDateInput()
	createSubmitButton()
	createClearButton()
	createMessageText()
	createBackButton()
end

function Object.createMainMenu()
	createManageButton()
	createBattleButton()
end

function Object.startup()
	print("--- Object Startup ---")
	obj = {}
	print("object table created")
	
	print("\n")
	Event.startup()
end

return Object
