local parent,root = newModule(...)
local M = {
  name = "Cat_paw1",
  --
  class = "rotation",
-- "Dissolve"
-- "Path"
-- "Linear"
-- "Pulse"
-- "Rotation"
-- "Tremble"
-- "Bounce"
-- "Blink"
--
}
M.layerOptions = {
  --
  referencePoint = "Center",
  -- "Center"
  -- "TopLeft"
  -- "TopCenter"
  -- "TopRight"
  -- "CenterLeft"
  -- "CenterRight"
  -- "BottomLeft"
  -- "BottomLeft"
  -- "BottomRight"
  -- for text
  deltaX         = 0,
  deltaY         = 0,
}
-- animationProps
M.properties = {
  type    = "", -- group, page, sprite
  target = "Cat_paw1",
  autoPlay = true,
  delay    = 0,
  duration = 1000,
  loop     = -1,
  reverse  = true,
  resetAtEnd  = false,
  --
  easing   = "outCirc",
  -- 'Linear'
  -- 'inOutExpo'
  -- 'inOutQuad'
  -- 'outExpo'
  -- 'outQuad'
  -- 'inExpo'
  -- 'inQuad'
  -- 'inBounce'
  -- 'outBounce'
  -- 'inOutBounce'
  -- 'inCircular'
  -- 'outCircular'
  -- 'inElastic'
  -- 'outElastic'
  -- 'inOutElastic'
  -- 'inBack'
  -- 'outBack'
  -- 'inOutBack'
  ------------
  -- flip
  xSwipe   = false,
  ySwipe   = false,
  useLang  = false
}
--
M.from = {
  x     = nil,
  y     = nil,
  --
  alpha = nil,
  yScale   = nil,
  xScale   = nil,
  rotation = nil,
}
--
M.to = {
  x     = nil,
  y     = nil,
  --
  alpha = 1,
  yScale   = 1,
  xScale   = 1,
  rotation = 4,
}
-- more option
-- action at the end of animation
M.actions = { onComplete = "" }
---------------------------------------
--
local function onEndHandler (UI)
  if M.actionName and M.actionName:len() > 0  then
    Runtime:dispatchEvent({name=UI.page..M.actionName, event={}, UI=UI})
  end
end
--
function M:create(UI)
  if UI.langClassDelegate and useLang then
    local t = self.name:split("/")
    self.name = t[1].."/".. UI.lang
  end
  --
  if self.properties.type == "group" then
    self.obj = require(parent..self.properties.target).group
  else
    self.obj = UI.sceneGroup[self.name]
  end
  self:initAnimation(UI, self.obj, onEndHandler)
  self.animation = self:buildAnim(UI)
  UI.animations[self.name.."_"..self.class] = self.animation
end
--
function M:didShow(UI)
  local sceneGroup = UI.sceneGroup
  if self.properties.autoPlay then
    if self.animation.from then
      --self.animation.from:toBeginning()
      -- transition.to(obj, {x = obj.x + 100})
      -- local obj = sceneGroup["cat_face1"]
      self.animation.from:play()
      -- self.animation.from:pause()
    else
      --self.animation.to:toBeginning()
      self.animation.to:play()
    end
  end
end
--
function M:didHide(UI)
  if self.animation.from then
    self.animation.from:pause()
    -- self.animation.from:toBeginning()
  end
  if self.animation.to then
    self.animation.to:pause()
    -- self.animation.to:toBeginning()
  end
end
--
return require("components.kwik.layer_animation").set(M)
