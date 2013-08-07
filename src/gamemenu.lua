GameMenu = Animation:extend
{
    x = 300, y = 200,
    scale = 2,
    width = 256, height = 224,
    image = 'assets/studiotitle.png',
    imageOffset = 18,
    sequences = { gamemenu = { frames = { 1,2,3,4,5,7,8,9,10,11,13,14,15,16,17,19,20,21,22,23,25,26,27,28,29,31,32,33,34,35,37,38,39 }, fps = 18} },
    
    onNew = function (self)
      self:play('gamemenu')
    end   
}