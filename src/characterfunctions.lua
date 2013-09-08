require 'middleclass'


character = class('character') 

function character:initialize(name)
	self.name = name
	self.dead = false
	self.gothit = false
	self.blocked = false
	self.knockback = false
  
  
	self.jumping = false
	self.flying = false
	self.swimming = false
	self.running = false
	self.landed = false
	if self.name == 'Adventbear' then
		self.canjump = true
		self.canattack = true
		self.canswim = true
		self.canfly = false
	end
	if self.name == 'Megabear' then
		self.canjump = true
		self.canattack = true
		self.canswim = true
		self.canfly = false		
	end
  
  
end


function character:animate()
-- jump --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end
  
function character:jump()
-- jump --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end
 
function character:attack()
-- attack --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end

function character:specialattack1()
-- special attack 1 --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end  
 
function character:specialattack2()
-- special attack 2 --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end  

function character:specialattack3()
-- special attack 3 --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end  
  
function character:blockandevade()
-- block and evade --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end
  
function character:climbladder()
-- climb ladder --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end
  
function character:swimorsink()
-- swim or sink --
	if self.name == 'Adventbear' then
	end
	if self.name == 'Megabear' then
	end
  end