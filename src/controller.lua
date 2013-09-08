
function controlvariables()
	--beginning of control variables
	speed = 0
	direction = "right"
	--climbing and other attributes
	attacking = false
	climbing = false
	jumping = false
	ducking = false
	blocking = false
end

function controls(dt)
--code controls for bear
	if love.keyboard.isDown("escape")then
    --
	end
	
	if love.keyboard.isDown("a") then
    --move left
	direction = "left"
	speed = speed + 3 * dt
	end
	if love.keyboard.isDown("d") then
    --move right
	direction = "right"
	speed = speed + 3 * dt
	end
	if (love.keyboard.isDown("a") and love.keyboard.isDown("d")) or (not(love.keyboard.isDown("a") or love.keyboard.isDown("d"))) then
	speed = 0
	end
	if speed >= 5 then speed = 5 end
	
	
	if love.keyboard.isDown("w") then
    --look up
	--climb ladder
	end
	if love.keyboard.isDown("s") then
    --look down
	--climb down ladder
	end
	
	if love.keyboard.isDown("tab") then
    --open hat selector
	end
	
	if love.keyboard.isDown("e") or love.keyboard.isDown("lshift") or love.keyboard.isDown("rshift")  then
    --block
	end

	if love.keyboard.isDown("e")then
    --
	end
	
end

function love.mousepressed(x, y, button)
   if button == "l" then
   --left button pressed
   end
   if button == "r" then
   --right button pressed
   end
end