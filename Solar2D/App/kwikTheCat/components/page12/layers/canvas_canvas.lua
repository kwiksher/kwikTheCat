local name = ...
local parent,root = newModule(name)

local layerProps = require(parent.."canvas")

-- layerProps
-- local layerProps = {
--   blendMode = "",
--   height    =   - ,
--   width     =  -  ,
--   kind      = ,
--   name      = "",
--   type      = "png",
--   x         =  + ( -)/2,
--   y         =  + ( - )/2,
--   alpha     = /100,
-- }

local M = {
  name = "",
  -- commonAsset = "",
  -- class = "canvas", -- button, drag, canvas ...
  --
  -- canvasProps
  properties = {
  autoSave   = true,
  brushSize  = 10,
  brushColor = {0, 0, 1},
  color      = {255/255, 255/255, 255/255},
  outline    = true,
  },
  --
  actions= nil,
  --
  layerProps = layerProps
}

function M:create(UI)
  self.UI = UI
  local sceneGroup = UI.sceneGroup
  local layerName  = self.layerProps.name
  self.obj        = sceneGroup[layerName]
  if self.isPage then
    sefl.obj = sceneGroup
  end
  --
  self:setCanvas(self.obj)
  UI.canvas = self
end

return require("components.kwik.layer_canvas").set(M)
