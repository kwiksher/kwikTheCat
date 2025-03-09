local name = ...
local parent,root = newModule(name)

local layerProps = require(parent.."color6")

local M = {
  name ="color6_button",
  properties = {
    target = "color6",
    eventType = "tap", -- tap, touch
    over = "",
    btaps = 1,
    mask = "",
  },
  actions={
    onTap = "tapHandler"
  },

  -- buyProductHide =
  -- product       =
  -- TV =
  layerProps = layerProps
}

function M:create(UI)
  local sceneGroup = UI.sceneGroup
  local obj =  self:createButton(UI)
  UI.layers[self.name] = obj
  sceneGroup[self.name] = obj
  sceneGroup:insert(obj)
end

function M:didShow(UI)
  self:addEventListener(UI)
end

function M:didHide(UI)
  self:removeEventListener(UI)
end

return require("components.kwik.layer_button").set(M)
