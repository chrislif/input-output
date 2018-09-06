local composer = require "composer"
local Object = require "scr.obj"

local scene = composer.newScene()

function scene:create(event)
	obj = {}
	Object.createMenu(obj)
end

function scene:show(event)

end

function scene:hide(event)

end

scene:addEventListener("create", scene)
scene:addEventListener("show",   scene)
scene:addEventListener("hide",   scene)

return scene
