gui = require 'src.Quickie'
require 'src.Quickie.style-default'

OptionsView = View:extend
{
  
    
  onNew = function (self)

--[[------------------------------
--  Options Menu Text
--]]------------------------------
    self.optionsText = Text:new{ font = {'fonts/CharlemagneStd-Bold.otf', 30}, x = 50, y = 20, width = the.app.width - 20, tint = the.FONT_TINT, text = "Game Options Go Here. So Have Fun!"}
  
    
    
--[[------------------------------
--  Exit Button Setup
--]]------------------------------
    self.exitOptions = Button:new{ x = the.app.width - 200 , y = the.app.height - 100, background = Text:new{ font = { 'fonts/CharlemagneStd-Bold.otf', 30}, tint = the.FONT_TINT, text = "Exit" } }
    
    
--[[------------------------------
--  Add these items to the view
--]]------------------------------
    self:add(self.optionsText)
    self:add(self.exitOptions)
    
    -- Set to false until its updated
    self.optionsText.visible = false
    self.exitOptions.visible = false
    
--[[------------------------------
--  Function for Exit Button
--]]------------------------------

    self.exitOptions.onMouseUp = function (self)
      -- Returns to main menu
      if self.beingClicked then
        the.app.view = MenuView:new()
      end
    end
    

  end,
 
 --[[------------------------------
--  Updates the Options View
--]]------------------------------
  onUpdate = function (self)
    
    
    self.optionsText.visible = true
    self.exitOptions.visible = true
  
  
  end
  
}