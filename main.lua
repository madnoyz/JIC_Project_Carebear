STRICT = true
DEBUG = true

require 'zoetrope'

the.app = App:new
{
	onRun = function (self)
		self.player = Fill:new{ x = 0, y = 0, width = 32, height = 48, fill = { 0, 0, 255}, 
		onUpdate = function (self, elapsed) 
			if the.keys:justPressed('left', 'a') then
				self.velocity.x = -100
			elseif the.keys:justPressed('right', 'd') then
				self.velocity.x = 100
			else
				self.velocity.x = 0
			end
		end 
		}

		self:add(self.player)
	end
}
