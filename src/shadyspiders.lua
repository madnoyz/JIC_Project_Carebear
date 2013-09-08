ShadySpiders = class('ShadySpiders', enemy) -- or enemy:subclass('ShadySpiders')

function ShadySpiders:initialize(name,hp,expgain,canjump,canattack,canswim,canfly,
damage,speed,direction,
jumping,flying,swimming,running,landed,gothit,blocked,knockback,dead)

enemy.initialize(self,name) -- this calls the parent's constructor (enemy.initialize) on self

  self.name = name
  self.hp = hp
  self.expgain = expgain
  self.canjump = canjump
  self.canattack = canattack
  self.canswim = canswim
  self.canfly = canfly
  
  self.damage = damage
  self.speed = speed
  self.direction = direction
  
  self.jumping = jumping
  self.flying = flying
  self.swimming = swimming
  self.running = running
  self.landed = landed
  
  self.gothit = gothit
  self.blocked = blocked
  self.knockback = knockback
  self.dead = dead
end