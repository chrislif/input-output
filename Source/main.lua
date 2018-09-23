-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local composer = require "composer"
local Object = require "Scripts.scr_obj"
local TextField = require "Scripts.scr_txtfield"

local function startup()
	print("----- Program Startup -----")
	print(os.date())
	print("\n")
	Object.startup()
end

startup()
composer.gotoScene("Scenes.mnu_main")