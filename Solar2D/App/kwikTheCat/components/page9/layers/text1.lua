-- $weight=0
--
local app = require "controller.Application"
local M = require("components.kwik.layer_image").new()
local infinity = require("components.kwik.layer_image_infinity")

local layerProps = {
  blendMode = "normal",
  height    =  265 - 196,
  width     = 1272 - 708 ,
  kind      = text,
  name      = "text1",
  type      = "png",
  x         = 1272 + (708 -1272)/2,
  y         = 196 + (265 - 196)/2,
  alpha     = 100/100,
  infinity = {
  },
  -- text properties
  contents =  "%E3%82%80%E3%81%97%E3%82%83%E3%80%80%E3%82%80%E3%81%97%E3%82%83",
  font =  "HiraKakuStd-W8",
  fontSize =  100,
  alignment =  "left",
  color    =  { 0, 0, 0, 1 },
  orientation = "horizontal",
}

M.align       = ""
M.randXStart  = nil
M.randXEnd    = nil
M.randYStart  = nil
M.randYEnd    = nil
--
M.xScale     = nil
M.yScale     = nil
M.rotation   = nil
--
M.layerAsBg     = nil
M.isSharedAsset = nil
--
M:setProps(layerProps)
--
function M:init(UI)
  --local sceneGroup = UI.scene.view
	if not self.isSharedAsset then
    self.imagePath = UI.page ..self.imageName
  end
end
--
function M:create(UI)
	if not self.isSharedAsset then
    self.imagePath = UI.page ..self.imageName
  end
  local obj = self:createImage(UI)
  UI.layers[#UI.layers] = obj
  self.obj = obj

  if self.infinity and self.infinity.enabled then
    infinity.createInfinityImage(UI, self.obj, self.infinity)
  end
end
--
function M:didShow(UI)
  if self.infinity and self.infinity.enabled then
    infinity.addEventListener(self.obj)
  end
end
--
function M:didHide(UI)
  if self.infinity and self.infinity.enabled then
    infinity.removeEventListener(self.obj)
  end
end
--
function  M:destroy(UI)
end
--
return M