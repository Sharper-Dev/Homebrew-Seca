package.path = package.path .. ";romfs:/scripts/modules/?.lua"
package.path = package.path .. ";romfs:/scripts/modules/LPP Input System/?.lua"

local InputSystem = require("lpp_input_system")

local function setup()
    
end

setup()

local function update()    
    
end

while true do
    Screen.refresh()
    Screen.waitVblankStart()
    
    InputSystem.readInputs()
    
    Screen.clear(TOP_SCREEN)
    Screen.clear(BOTTOM_SCREEN)
    
    update()
    
    Screen.flip()
    
    if InputSystem.getKeyDown(KEY_HOME) then
        System.showHomeMenu()
    end
    if System.checkStatus() == APP_EXITING then
        System.exit()
        break
    end
end
