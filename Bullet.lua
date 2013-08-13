Bullet = Fill:new
{
  damage = 1,
  speed = 300,
  exist = false,
  width = 4, 
  height = 4,
  fill = { 0, 155, 255 },
  
  onNew = function (self)
    
  end,
  
  onRun = function (self)
   
  end,
  
  onUpdate = function (self)
    
  end,

  onCollide = function (self)
  
  end

}

fireBullet = function ( self, bx, by )
  self.x = bx
  self.y = by
  self.velocity.y = -speed
  exist = true
end
