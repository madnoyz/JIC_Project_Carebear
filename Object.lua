Door = Tile:extend
{
    onCollide = function (self, other)
        if other:instanceOf(Hero) then
            self:die()
            PREVMAP = MAP
            MAP = self.to

            -- Update state
            STATE.map = MAP

            the.app.view = MapView:new()
            the.app.view:flash({0, 0, 0}, .75)
        end
    end
}

Spawn = Tile:extend
{  
    onNew = function ( self )
        if PREVMAP and self.from == PREVMAP then
            heroStartX = self.x
            heroStartY = self.y
        end
    end
}