--December 5, 2012
--Author: Berzee (jake.brasee.com)
--
--This class plays back Records that come from the standard Zoetrope Recorder
--and puts the events into its own "keys" and "mousePos" fields instead of
--actually affecting the game output. Useful if you want to record something
--and apply it to an object in your game ala P.B. Winterbottom, The Company of Myself, or
--Time Donkey.
--
--Most of this class is a direct copy of the Recorder from Zoetrope 1.3
--You can use this class if for whatever reason you want to. I hereby proclaim it released
--under the same zlib/libpng license as Zoetrope!
--
--To use, add like a normal sprite and startPlaying(self,record), passing in a record obtained
--from the Zoetrope recorder. Then simply check the following fields every loop in order 
--to see if any inputs were pressed that frame. The values will either be an empty string,
--or else the value of the key or button that was pressed. (mousePosX and mousePosY will
--of course always have a value).
--
--FIELDS OF NOTE:
--mousePosX
--mousePosY
--keypressed
--keypressedUnicode
--keyreleased
--keyreleasedUnicode
--mousePressed
--mouseReleased
--
--also state (either IDLE or PLAYING)


RecordPlayer = Sprite:extend{
	_elapsed = 0,
	IDLE = 'idle',
	PLAYING = 'playing',
	mousePosX = -1,
	mousePosY = -1,
	keypressed = '',
	keypressedUnicode = '',
	keyreleased = '',
	keyreleasedUnicode = '',
	mousePressed = '',
	mouseReleased = '',
	
	new = function (self, obj)
		obj = self:extend(obj)
		obj.state = RecordPlayer.IDLE

		Sprite.new(obj)
		return obj
	end,

	-- Recorder has a "record" param being passed in here
	-- but having a double array as a parameter was
	-- mysteriously coming up nil inside the function,
	-- so "record" should be set in the constructor instead
	startPlaying = function (self)
		if self.state == RecordPlayer.PLAYING then
			self:stopPlaying()	
		end

		self.state = RecordPlayer.PLAYING 

		self._elapsed = 0
		self.playbackIndex = 1
	end,

	stopPlaying = function (self)
		if not self.state == RecordPlayer.PLAYING then return end
		self.state = RecordPlayer.IDLE
	end,

	update = function (self, elapsed)
		if self.state ~= RecordPlayer.IDLE then
			self._elapsed = self._elapsed + elapsed
		end

		if self.state == RecordPlayer.PLAYING and self._elapsed >= self.record[self.playbackIndex][1] then
			local event = self.record[self.playbackIndex]
			
			self.mousePosX = event[2]
			self.mousePosY = event[3]
			self.keypressed = ''
			self.keypressedUnicode = ''
			self.keyreleased = ''
			self.keyreleasedUnicode = ''
			self.mousePressed = ''
			self.mouseReleased = ''

			if event[4] == 'keypress' then
				self.keypressed = event[5]
				self.keypressedUnicode = event[6]
			elseif event[4] == 'keyrelease' then
				self.keyreleased = event[5]
				self.keyreleasedUnicode = event[6]
			elseif event[4] == 'mousepress' then
				self.mousePressed = event[5]
			elseif event[4] == 'mouserelease' then
				self.mouseReleased = event[5]
			end

			self.playbackIndex = self.playbackIndex + 1

			if self.playbackIndex > #self.record then
				self:stopPlaying()
			end
		end
	end
}
