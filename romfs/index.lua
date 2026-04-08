--[
-- Homebrew Seca por Sharper Dev
-- Lua Player Plus by Rinnegatamante
--]
-- 
package.path = package.path .. ";romfs:/scripts/?.lua"
package.path = package.path .. ";romfs:/scripts/modules/LPP Input System/?.lua"

local InputSystem = require("lpp_input_system")
local TopScreen = require("top_screen")
local BottomScreen = require("bottom_screen")
local FontsManager = require("fonts_manager")

local rlkSound = nil;

local function setup()
    FontsManager.loadAllFonts()
    Font.setPixelSizes(FontsManager.getFont("arial"), 11)
    
    Sound.init()
    rlkSound = Sound.openWav("romfs:/sounds/rlk.wav")
    
    TopScreen.setup()
    BottomScreen.setup()
    
    Sound.play(rlkSound, LOOP)
end

setup()

local function update()
    TopScreen.draw()
    BottomScreen.draw()
    
    if InputSystem.getKeyDown(KEY_HOME) then
        JPGV.unload(TopScreen.jpgvVideo)
        Sound.pause(rlkSound)
        Sound.close(rlkSound)
        Sound.term()
        rlkSound = nil
        TopScreen.jpgvVideo = nil
        BottomScreen.jpgvVideo = nil
        System.exit()
    end
end

while true do
    Screen.waitVblankStart()
    Screen.refresh()
    InputSystem.readInputs()
    Screen.clear(TOP_SCREEN)
    Screen.clear(BOTTOM_SCREEN)
    
    update()
    
    
    Screen.flip()
end

