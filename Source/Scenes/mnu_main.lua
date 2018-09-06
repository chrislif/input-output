local composer = require "composer"
local Object = require "Scripts.scr_obj"

local scene = composer.newScene()

function scene:create(event)
	Object.createMainMenu()
end

function scene:show(event)

end

function scene:hide(event)

end

scene:addEventListener("create", scene)
scene:addEventListener("show",   scene)
scene:addEventListener("hide",   scene)

return scene
