local TopScreen = {}
local FontsManager = require("fonts_manager")

function TopScreen.setup()
    TopScreen.jpgvVideo = JPGV.load("romfs:/videos/top.jpgv")
    JPGV.start(TopScreen.jpgvVideo, LOOP)
end

function TopScreen.draw()
    JPGV.drawFast(TopScreen.jpgvVideo, TOP_SCREEN, false)
    Font.print(FontsManager.getFont("arial"), 5, 227, "Edit e som: RXYET", Color.new(255, 255, 255), TOP_SCREEN)
end

return TopScreen