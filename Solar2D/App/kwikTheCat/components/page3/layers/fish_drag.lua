local name = ...
local parent,root, M = newModule(name)

local layerProps = require(parent.."fish")
local MultiTouch = require("extlib.dmc_multitouch")

M.properties = {
  tagret ="fish",
  -- commonAsset = "",
  -- class = "drag", -- button, drag, canvas ...
  --
  -- dragProps
  constrainAngle = nil,
  boundaries = {xMin=nil, xMax=nil, yMin=nil, yMax=nil},
  isActive = "true",
  isFocus = true,
  isPage = false,
  --
  isFlip = true,
  -- flipAxis = "x", -- "y",
  -- flipValue      = 0,
  flipInitialDirection  = "right", -- "left", "bottom", "top"
  -- flipScale = 1, -- -1
  --
  isDrop = true,
  dropArea = "baloon",
  dropMargin = 10,
  --
  --dropBound = {xMin=0, xMax=0, yMin = 0, yMax=0},
  --
  rock = 1, -- 0,
  backToOrigin = false,
  --
}

M.actions={
  onDropped = "eventTwo",
  onReleased ="eventThree",
  onMoved="" }
--
M.layerProps = layerProps

function M:create(UI)
  self.UI = UI
  local sceneGroup = UI.sceneGroup
  local layerName  = self.layerProps.name
  self.obj        = sceneGroup[layerName]
  if self.isPage then
    self.obj = sceneGroup
  end
  --
  self.obj.dropArea = sceneGroup[self.properties.dropArea]
  self:activate(self.obj)
end

function M:didShow(UI)
  self.UI = UI
  -- self:addEventListener(self.obj)
  if self.obj then
    self.obj:addEventListener( MultiTouch.MULTITOUCH_EVENT, self.listener)
  end

end

function M:didHide(UI)
  -- self:removeEventListener(self.obj)
  if self.obj then
    self.obj:removeEventListener( MultiTouch.MULTITOUCH_EVENT, self.listener)
  end

end

function M:destroy(UI)
  self:deactivate(self.obj)
end

return require("components.kwik.layer_drag").set(M)
