Hero = Animation:extend
{
    LEFT = -1,
    RIGHT = 1,
    IDLE = 0,
    --width = 32,
    --height = 64,
    acceleration = { y = 1500 },
    friction = 7,
    image = nil,
    walking = 0,
    canJump = false,
    facing = 'right',
    justTurned = false,
    jumping = false,
    jumped = false,
    currentAttack = nil, -- Different items?
    punchTimer = 0, 
    name = '',
    health = 100,
    MAX_HEALTH = 100,
    attackTimer = 0,
    blocking = false,
    width = 48, 
    height = 64, 
    image = 'img/protomanL.png',
    
    sequences = 
    {
      walk = { frames = { 1, 2, 3, 4, 5, 6, 7, 9, 10}, fps = 10},
      jump = { frames = { 17, 18, 19, 20 }, fps = 1 },
      idle = { frames = { 14, 15, 16 }, fps = 1 },
    },
    
    onNew = function (self)
    
    end,
    
    onUpdate = function (self)
      self.velocity.x = 0
      
      if the.keys:pressed('left') then
        self.velocity.x = -200
        self:play('walk')
        dir = 'left'
      elseif the.keys:pressed('right') then
        self.velocity.x = 200
        self:play('walk')
        dir = 'right'
      else 
        self.velocity.x = 0
        if dir == 'left' then
          self:play('idle')
          dir = 'left'
        else 
          self:play('idle')
          dir = 'right'
        end
      end
    end,
    
    onCollide = function (self)
      if self.acceleration.y > 0 and self.y > 0 and not DOOR then
        self.acceleration.y = 0
      end
    end    
}