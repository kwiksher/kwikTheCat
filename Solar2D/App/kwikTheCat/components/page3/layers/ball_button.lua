local name = ...
local parent,root = newModule(name)

local layerProps = require(parent.."ball")

local M = {
  name ="ball",
  properties = {
    target = "ball",
    type  = "tap", -- tap, touch
    over = "ball_over",
    btaps = 2,
    mask = "NIL",
  },
  actions={
    onTap = "eventOne"
  },

  -- buyProductHide =
  -- product       =
  -- TV =
  layerProps = layerProps
}

function M:create(UI)
  local sceneGroup = UI.sceneGroup
  local obj =  self:createButton(UI)
  --UI.layers[self.name] = obj
  --sceneGroup[self.name] = obj
  -- sceneGroup:insert(obj)
end

function M:didShow(UI)
  self:addEventListener(UI)
end

function M:didHide(UI)
  self:removeEventListener(UI)
end

return require("components.kwik.layer_button").set(M)
