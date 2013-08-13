MenuView = View:extend
{
    onNew = function (self)
      the.app.useSysCursor = true
      
      --self.background = Animation:new{image = "img/AdventureBear.jpg", width = 792, height= 612}
      --self:add(self.background)
      
      self.newMenu = Animation:new{image = 'img/AdventureMenu.png', width = 980, height = 640}
      --self.newGame = Button:new{}
      self:add(self.newMenu)

      self.newGame = Button:new{x=388,y=413 , background=Animation:new{image = 'img/btnNewGame.png', width = 203, height = 58}}
      self.options = Button:new{x=388,y=469 , background=Animation:new{image = 'img/btnOptions.png', width = 203, height = 59}}
      self.exitGame = Button:new{x=388,y=530 , background=Animation:new{image = 'img/btnExit.png', width = 203, height = 57}}
      
      
      self:add(self.newGame)
      self:add(self.options)
      self:add(self.exitGame)
      
      self.newGame.visible = false
      self.options.visible = false
      self.exitGame.visible = false
      
      self.newGame.onMouseUp = function (self)
        if self.beingClicked then
          self:die()
          the.app.view = MapView:new()
        end
      end
      
      self.options.onMouseUp = function (self)
        if self.beingClicked then
          the.app.view = OptionsView:new()
        end
      end
      
      self.exitGame.onMouseUp = function (self)
        if self.beingClicked then
          the.app.quit()
        end
      end
      
      
    end,
    
    onUpdate = function (self)
      self.newGame.visible = true
      self.options.visible = true
      self.exitGame.visible = true
    end
    
}