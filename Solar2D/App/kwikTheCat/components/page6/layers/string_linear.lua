local parent,root = newModule(...)
local M = {
  name = "string",
  --
  class = "linear",
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
  referencePoint = "TopRight",
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
  target = "string",
  autoPlay = true,
  delay    = 0,
  duration = 2000,
  loop     = -1,
  reverse  = true,
  resetAtEnd  = false,
  --
  easing   = "inCircular",
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
M.from = nil

-- {
--   x     = 0,
--   y     = 0,
--   --
--   alpha = 1,
--   yScale   = 1,
--   xScale   = 1,
--   rotation = 0,
-- }
--
M.to = {
  -- x     = 452,
  -- y     = 316,
  --
  alpha = 1,
  yScale   = 1.3,
  xScale   = 1,
  rotation = -20,
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

  -- Add circle at the bottom center of the object
  if self.obj then
    local objBounds = self.obj.contentBounds
    local radius = self.obj.width * 1.5 -- Half the width as radius

    -- Calculate position (bottom center)
    local circleX = objBounds.xMin + (objBounds.xMax - objBounds.xMin) * 0.5
    local circleY = objBounds.yMax

    -- Create the circle with shallow pink color
    local circle = display.newCircle(circleX, circleY, radius)
    circle:setFillColor(1, 0.4, 0.7, 0.8) -- Shallow pink with 0.5 alpha
    circle.anchorY = 0 -- Set anchor to top of circle so it sits at the bottom of the object

    -- Add the circle to the scene group and give it a name
    UI.sceneGroup:insert(circle)
    UI.sceneGroup[self.name.."_bottomCircle"] = circle

    -- Store reference to circle for animation purposes
    self.bottomCircle = circle
  end

  self:initAnimation(UI, self.obj, onEndHandler)
  self.animation = self:buildAnim(UI)
  UI.animations[self.name.."_"..self.class] = self.animation
end
--
function M:didShow(UI)
  local sceneGroup = UI.sceneGroup
  if self.animation and self.properties.autoPlay then
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
  --
  local bottomCircle = UI.sceneGroup[self.name.."_bottomCircle"]
  local obj = self.obj

  -- Create enterFrame listener to update circle position
  if bottomCircle and obj then
    -- Create function to update circle position
    local function updateCirclePosition()
      if bottomCircle.removeSelf == nil or obj.removeSelf == nil then
        -- Object has been removed, remove the listener
        Runtime:removeEventListener("enterFrame", updateCirclePosition)
        return
      end

      -- Get current object properties
      local objBounds = obj.contentBounds
      local objRotation = obj.rotation

      -- Find center bottom point in local coordinates
      local localX = obj.width * 0.5 * obj.xScale*0.9
      local localY = obj.height * obj.yScale*0.9

      -- Convert from local to content coordinates accounting for rotation
      -- First, adjust for anchor point (TopRight in this case)
      local anchorOffsetX = obj.width
      local anchorOffsetY = 0

      -- Convert angle to radians
      local rad = math.rad(objRotation)
      local cosR = math.cos(rad)
      local sinR = math.sin(rad)

      -- Translate point relative to anchor
      local relX = localX - anchorOffsetX
      local relY = localY - anchorOffsetY

      -- Rotate the point
      local rotatedX = relX * cosR - relY * sinR
      local rotatedY = relX * sinR + relY * cosR

      -- Translate back and add object position
      local circleX = obj.x + rotatedX + anchorOffsetX * cosR - anchorOffsetY * sinR -30
      local circleY = obj.y + rotatedY + anchorOffsetX * sinR + anchorOffsetY * cosR -30

      -- Update circle position
      bottomCircle.x = circleX
      bottomCircle.y = circleY
    end
    -- Store the function reference for later removal
    self.updateCirclePosition = updateCirclePosition

    -- Add the enterFrame listener
    Runtime:addEventListener("enterFrame", updateCirclePosition)
  end
end
--
function M:didHide(UI)
  if self.animation and self.animation.from then
    self.animation.from:pause()
    -- self.animation.from:toBeginning()
  end
  if self.animation and self.animation.to then
    self.animation.to:pause()
    -- self.animation.to:toBeginning()
  end
end
--
return require("components.kwik.layer_animation").set(M)
