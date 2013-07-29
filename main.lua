-- screen / window init
SCREEN_WIDTH, SCREEN_HEIGHT = MOAIEnvironment.screenWidth or 1280, MOAIEnvironment.screenHeight or 720
SCREEN_UNITS_X, SCREEN_UNITS_Y = 1280, 720
MOAISim.openWindow("Template", SCREEN_WIDTH, SCREEN_HEIGHT )


-- requirements
dofile("config.lua")

-- initialize things here
beholder.observe("key_down", "esc", function()
  os.exit()
end)
local game = Game:new()


-- main simulation loop
local mainThread = MOAICoroutine.new ()
mainThread:run(function()
  while true do
    local dt = MOAISim.getStep()
    -- game.update(dt)
    coroutine.yield()
  end
end)
