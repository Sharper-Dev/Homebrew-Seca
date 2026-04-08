local BottomScreen = {}
local FontsManager = require("fonts_manager")

function BottomScreen.setup()
    BottomScreen.jpgvVideo = JPGV.load("romfs:/videos/bottom.jpgv")
    JPGV.start(BottomScreen.jpgvVideo, LOOP)
end

function BottomScreen.draw()
    JPGV.drawFast(BottomScreen.jpgvVideo, BOTTOM_SCREEN, false)
    Font.print(FontsManager.getFont("arial"), 5, 227, "Edit: @caquinhozinho", Color.new(255, 255, 255), BOTTOM_SCREEN)
end

return BottomScreen