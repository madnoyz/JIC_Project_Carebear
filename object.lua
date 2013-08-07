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

Spawn = Tile:extend
{
    onNew = function ( self )
        if PREVMAP and self.from == PREVMAP then
            heroStartX = self.x
            heroStartY = self.y
        end
    end
}

Hero = Animation:extend
{ 
	width = 48, 
  height = 64, 
	image = 'assets/protoman.png',
  sequences = {
		right = { frames = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 }, fps = 20 },
		left =  { frames = { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30}, fps = 20 },
    jumpR = { frames = { 11, 12, 13, 14 }, fps = 10 },
    jumpL = { frames = { 37, 38, 39, 40}, fps = 10 },
    idleR = { frames = { 15, 16, 17 }, fps = 1 },
    idleL = { frames = { 34, 35, 36 }, fps = 1 }
	},
  
	acceleration = { y = 400 },
	canJump = false,
  dir = 'right',

	onUpdate = function (self) 
    self.velocity.x = 0
    
		if the.keys:pressed('left') then
			self.velocity.x = -200
			self:play('left')
      dir = 'left'
		elseif the.keys:pressed('right') then
			self.velocity.x = 200
			self:play('right')
      dir = 'right'
		else 
      self.velocity.x = 0
      if dir == 'left' then
        self:play('idleL')
        dir = 'left'
      else 
        self:play('idleR')
        dir = 'right'
      end
		end
    
  	if the.keys:justPressed('up', 'w') and the.keys:pressed('right', 'd') then
      self:freeze(currentFrame)
			self:play('jumpR')
      self.canJump = false 
      self.velocity.y = -300
      playSound('assets/Jump-SoundBible.com-1007297584.mp3')
    elseif the.keys:justPressed('up', 'w') and the.keys:pressed('left', 'a') then
      self:freeze(currentFrame)
      self:play('jumpL')
      self.canJump = false 
      self.velocity.y = -300
      playSound('assets/Jump-SoundBible.com-1007297584.mp3')
		end

		if self.y >= 1000 then
      self.x = 0
      self.y = 0
			self.velocity.x = 0
		end
    
	end,
  
  onCollide = function (self)
        if self.velocity.y > 0 then
            self.canJump = true
        end
  end
}