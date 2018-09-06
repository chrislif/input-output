-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local composer = require "composer"
local Object = require "Scripts.scr_obj"

local function startup()
	print("----- Program Startup -----")
	
	print("\n")
	Object.startup()
end

startup()
composer.gotoScene("Scenes.mnu_main")