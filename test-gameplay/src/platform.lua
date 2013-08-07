Platform = View:extend
{
  onNew = function (self)
    self:loadLayers('map/map_1.lua')
    self.focus = the.player
    self:clampTo(self.platform)
  end,
  
  onUpdate = function (self)
      self.platform:displace(the.hero)
      self.objects:collide(self.objects)
  end
}