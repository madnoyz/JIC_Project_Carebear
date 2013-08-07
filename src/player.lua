Door = Tile:extend
{
    onCollide = function (self, other)
        if other:instanceOf(Hero) then
            self:die()
            PREVMAP = MAP
            MAP = self.to

            -- Update state
            STATE.map = MAP

            the.app.view = MapView:new()
            the.app.view:flash({0, 0, 0}, .75)
        end
    end
}

Hero = Animation:extend
{ 
	width = 20, height = 32, 
	image = 'assets/protoman.png',
	sequences = {
		right = { frames = { 1, 2, 3, 4, 5, 6, 7, 9, 10}, fps = 1},
		left =  { frames = { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}, fps = 1 },
    jumpR = { frames = { 11, 12, 13, 14 }, fps = 10 },
    jumpL = { frames = { 37, 38, 39, 40}, fps = 10 },
    idleR = { frames = { 15, 16, 17 }, fps = 1 },
    idleL = { frames = { 33, 34, 35, 36 }, fps = 1 }
	},
	acceleration = { y = 400 },
	canJump = false,
  dir = 'right',

	onUpdate = function (self, elapsed) 
		if the.keys:pressed('left', 'a') then
			self.velocity.x = -100
			self:play('left')
      dir = 'left'
		elseif the.keys:pressed('right', 'd') then
			self.velocity.x = 100
			self:play('right')
      dir = 'right'
		else
			self.velocity.x = 0
      if dir == 'right' then
        self:play('idleR')
      elseif dir == 'left' then
        self:play('idleL')
      end
		end

		if the.keys:justPressed(' ') and self.canJump == true then
			playSound('assets/Jump-SoundBible.com-1007297584.mp3')
			self.velocity.y = -300
			self.canJump = false
      if dir == 'left' then
        self:play('jumpL')
      else
        self:play('jumpR')
      end
		end

		if self.y >= the.app.height then
			self.x = 0
			self.y = 0
		end
	end,

	onCollide= function (self, other, hOverlap, vOverlap)
		if vOverlap > hOverlap and self.velocity.y < 0 then
			self.velocity.y = 0
      self.canJump = true
      self.acceleration.y = -200
		end
    if vOverlap > hOverlap and self.velocity.y > 0 then
      self.velocity.y = 0
    end
    
		
	end
}

Spawn = Tile:extend
{
    onNew = function ( self )
        if PREVMAP and self.from == PREVMAP then
            heroStartX = self.x
            heroStartY = self.y
        end
    end
}
