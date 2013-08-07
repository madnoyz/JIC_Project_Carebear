STRICT = true
DEBUG = true

require 'zoetrope'
require 'Hero'
require 'Map'
require 'MenuView'
require 'OptionsMenu'
require 'RecordPlayer'

the.JUMP_KEY = ' '
the.ATK_KEY = 'up'
the.SHIELD_KEY = 'b'
the.FONT_TINT = { 255/255, 0/255, 0/255}

the.app = App:new
{
  name = 'Project Care Bear',
  width = 980,
  heigth = 640,
  
  heroHealth = 100,
  heroAmmo = 100,
  heroEnergy = 5, 
  
  onRun = function (self)
    self.music = love.audio.newSource("snd/FindYou.ogg", "stream")
    self.music:setVolume(0.3)
    self.music:setLooping(true)
    love.audio.play(self.music)
    
    self.save = Storage:new{ filename = 'save.dat' }
    
    self.view = MenuView:new()
    
  end,
  
  onUpdate = function (self)
        if the.keys:justPressed('s') then
            -- Save state data
            self.save.data = STATE
            self.save:save()
        end

        if the.keys:justPressed('l') then
            -- Load data into state
            self.save:load()
            STATE = self.save.data

            -- Reload view
            self.view = MapView:new()
            the.app.view:flash({0, 0, 0}, .75)
        end

        if the.keys:justPressed('x') then
            -- Save empty state data
            self.save.data = {}

            self.save:save()

            -- Load data into state
            self.save:load()
            STATE = self.save.data

            -- Reload view
            self.view = MapView:new()
            the.app.view:flash({0, 0, 0}, .75)
        end
    end 
   
}