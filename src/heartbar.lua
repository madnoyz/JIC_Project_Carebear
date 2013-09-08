function heartbarinit()
	--heart bar code --
  life = 10
	heart = love.graphics.newImage("assets/heart.png")
	spriteBatch = love.graphics.newSpriteBatch(heart, life)
  
	A = {}
  cnt_spriteBatch = 25
    for h = 1, 9 do
    A[h] = spriteBatch:add( cnt_spriteBatch * (h - 1),0,0,0.5,0.5,0,0,0,0)
  end
  
	timer = 0
	i = 10
	--end of heart bar code --
end

function couragebarinit()
	courage = 0
	couragemax = 100
end

function hearttimer()
-- needed for heart bar code  - timer --
	if timer > 0 then timer = timer - 1 end
	if timer < 0 then timer = 0 end
-- end of timer --
end

function gaincourage()
	courage = courage + 1
	if courage >= couragemax then courage = couragemax end
end

function heartchange(x)
-- this code is for the heart bar --	
	if love.keyboard.isDown("left") and timer == 0 then
		timer = 30
		
    if i < 1 then i = 1 else i = i - 1 end
		
    if i == 9 then
      spriteBatch:set(A[9],200,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 8 then
      spriteBatch:set(A[8],175,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 7 then
      spriteBatch:set(A[7],150,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 6 then
      spriteBatch:set(A[6],125,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 5 then
      spriteBatch:set(A[5],100,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 4 then
      spriteBatch:set(A[4],75, 0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 3 then
      spriteBatch:set(A[3],50,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 2 then
      spriteBatch:set(A[2],25,0, 0, .1, .1, 0, 0, 0, 0	)
		end
    
		if i == 1 then
      spriteBatch:set(A[1],0,0, 0, .1, .1, 0, 0, 0, 0	)
		end
	end		
	
	if love.keyboard.isDown("right") and timer == 0 then
    timer = 30
    if i == 9 then
      spriteBatch:set(A[9],200,0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 8 then
      spriteBatch:set(A[8],175, 0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 7 then
      spriteBatch:set(A[7],150,0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 6 then
      spriteBatch:set(A[6],125, 0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 5 then
      spriteBatch:set(A[5],100, 0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 4 then
      spriteBatch:set(A[4],75,0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 3 then
      spriteBatch:set(A[3],50,0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 2 then
      spriteBatch:set(A[2],25,0, 0, .5, .5, 0, 0, 0, 0	)
		end
    
		if i == 1 then
      spriteBatch:set(A[1],0,0, 0, .5, .5, 0, 0, 0, 0	)
    end
  
		if i > 10 then i = 10 else i = i + 1 end
	end		
-- end of heart bar code --	
end

function drawheartbar(x,y)
  love.graphics.setColor(0, 0, 255, 100)
  love.graphics.rectangle("fill", x, y + 50, 2 * courage, 10 )
  love.graphics.setColor(255, 255, 255, 255)
  love.graphics.draw(spriteBatch, x, y) -- draw the custom mouse image
end

