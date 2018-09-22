local composer = require "composer"
local Object = require "Scripts.scr_obj"
local Function = require "Scripts.scr_fnc"

scene = composer.newScene()

function scene:create(event)
	Object.createManageMenu()
end

function scene:show(event)

end

function scene:hide(event)
	if event.phase == "did" then
		
		print(Function.tableLength(txt))
	end
end

scene:addEventListener("create",  scene)
scene:addEventListener("show",    scene)
scene:addEventListener("hide",    scene)
scene:addEventListener("destroy", scene)

return scene
