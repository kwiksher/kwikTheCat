local name = ...
local parent,root = newModule(name)

local layerProps = require(parent.."baloon")

local M = {
  name ="baloon",
  -- commonAsset = "",
  -- class = "drag", -- button, drag, canvas ...
  --
  -- dragProps
  constrainAngle = nil,
  bounds = {xStart=nil, xEnd=nil, yStart=nil, yEnd=nil},
  isActive = "true",
  isFocus = true,
  isPage = false,
  --
  isFlip = true,
  flipAxis = "x", -- "y",
  flipValue      = 0,
  flipDirection  = "right", -- "left", "bottom", "top"
  flipDirecttion1 = "right",
  flipDirecttion2 = "left",
  flipScale = 1, -- -1
  --
  isDrop = true,
  dropArea = "",
  dropMargin = 10,
  --
  dropBound = {xStart=0, xEnd=0, yStart = 0, yEnd=0},
  --
  rock = 1, -- 0,
  backToOrigin = true,
  --
  actions={
  --
  layerProps = layerProps
}

function M:create(UI)
  self.UI = UI
  local sceneGroup = UI.sceneGroup
  local layerName  = self.layerProps.name
  self.obj        = sceneGroup[layerName]
  if self.isPage then
    self.obj = sceneGroup
  end
  --
  self:activate(self.obj)
end

function M:didShow(UI)
  self.UI = UI
  self:addEventListener(self.obj)
end

function M:didHide(UI)
  self:removeEventListener(self.obj)
end

return require("components.kwik.layer_drag").set(M)