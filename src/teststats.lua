function ShadySpiders:typestats()
    love.graphics.print(""..self.name.."", 400, 25)
	love.graphics.print(""..self.hp.."", 400, 50)
	love.graphics.print(""..self.expgain.."", 400, 75)
	
	
	if self.canjump == true then 
	love.graphics.print(" Jumps ", 400, 125)
	else
	love.graphics.print(" Cannot Jump ", 400, 125)
	end
	
	if self.canjump == true then 
	love.graphics.print(" Attacks ", 400, 150)
	else
	love.graphics.print(" Cannot Attack ", 400, 150)
	end
	
	if self.canswim == true then 
	love.graphics.print(" Swims ", 400, 175)
	else
	love.graphics.print(" Cannot Swim ", 400, 175)
	end
	
		
	if self.canswim == true then 
	love.graphics.print(" Flys ", 400, 200)
	else
	love.graphics.print(" Cannot Fly ", 400, 200)
	end
	
	
	--hp,expgain,canjump,canattack,canswim,canfly,
--damage,speed,direction,
--jumping,flying,swimming,running,landed,gothit,blocked,knockback,dead)
	end