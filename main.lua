require 'header'

function love.load()
  menuSong = love.audio.newSource("snd/Prelude.ogg", "stream")
  menuSong:setVolume(0.3)
  menuSong:setLooping(true)
  love.audio.play(menuSong)
  
  mnu_gamecompany = love.graphics.newImage('art/jicway.png')
  
  mnu_bg = love.graphics.newImage('art/AdventureBear.jpg')
  mnu_btnplay = love.graphics.newImage('art/btnNewGame.png')
  mnu_btnload = love.graphics.newImage('art/btnExit.png')
  mnu_btnopt = love.graphics.newImage('art/btnOptions.png')
end

function love.update(dt)
end

function love.draw()
  love.graphics.draw(mnu_bg, 80, 0)
end


--[[
function love.load()
	love.mouse.setVisible(false) -- make default mouse invisible
  
  img = love.graphics.newImage("art/mouse.png") -- load in a custom mouse image
	control1 = love.graphics.newImage("art/mouse.png")
	
  x1 = 30
	y1 = 70
	
  heartbarinit()
  couragebarinit()
  controlvariables()	
  statusmenuvar()
end

function love.update(dt)
  --timer for hearts 
  hearttimer()
  
  --courage gain
  gaincourage()
  
  --code controls for bear
  controls(dt)

  -- test in game menu 
  statusmenuupdate()

  --test status menu
  
	if love.keyboard.isDown("down") then
      y1 = y1 + (100 * dt)
	end
	if love.keyboard.isDown("up") then
      y1 = y1 - (100 * dt)
	end
	
	if y1 > 190 then y1 = 100 end
	if y1 < 100 then y1 = 190 end
	
	if love.keyboard.isDown(" ") then
        if y1 > 100 and y1 < 130 then end
        if y1 > 140 and y1 < 170 then end
		if y1 > 170 and y1 < 200 then end
		end
	
heartchange(x)
	
end

function love.draw()
  drawmainmenu1()
	
	love.graphics.print("Direction "..direction.." " .. type(direction), 400, 250)
	love.graphics.print("Speed " ..speed.. " " .. type(speed), 400, 300)
	
	x, y = love.mouse.getPosition() -- get the position of the mouse
	love.graphics.draw(img, x, y) -- draw the custom mouse image
	love.graphics.draw(img, x1, y1) -- draw the custom mouse image
	--draw the heart bar --
	drawheartbar(10,10)
	drawstatusmenu()
	
	
	-- show a message
	--p1:speak()
	--show stats of shady spider
	--shady:typestats()
end

]]--

function love.keypressed(key)   -- we do not need the unicode, so we can leave it out
   if key == "escape" then
      love.event.push("quit")   -- actually causes the app to quit
   end
end

function love.quit()
  print("Thanks for playing! Come back soon!")
end