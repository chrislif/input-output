local composer = require "composer"
local Object = require "Scripts.scr_obj"

scene = composer.newScene()

function scene:create(event)
	Object.createManageMenu()
end

function scene:show(event)

end

function scene:hide(event)
	if obj.nameBox ~= nil then
		obj.nameBox:removeSelf()
	end
	if obj.dateBox ~= nil then
		obj.dateBox:removeSelf()
	end
end

scene:addEventListener("create", scene)
scene:addEventListener("show",   scene)
scene:addEventListener("hide",   scene)

return scene
