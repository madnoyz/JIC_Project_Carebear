STRICT = false
DEBUG = true

MAP = 'home'
PREVMAP = ' '
STATE = {}

require 'zoetrope'
require 'map'
require 'object'

the.app = App:new
{
	onRun = function (self)
    self.save = Storage:new{ filename = 'save.dat' }
    self.view = MapView:new()
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

        if the.keys:justPressed('d') then
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
