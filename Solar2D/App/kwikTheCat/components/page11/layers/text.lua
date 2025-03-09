-- $weight=0
--
local app = require "controller.Application"
local M = require("components.kwik.layer_image").new()
local infinity = require("components.kwik.layer_image_infinity")

local layerProps = {
  blendMode = "normal",
  height    =  169 - 96,
  width     = 1780 - 718 ,
  kind      = text,
  name      = "text",
  type      = "png",
  x         = 1780 + (718 -1780)/2,
  y         = 96 + (169 - 96)/2,
  alpha     = 100/100,
  infinity = {
  },
  -- text properties
  contents =  "%E3%81%95%E3%81%8B%E3%81%AA%E3%80%80%E3%81%AE%E3%80%80%E3%82%86%E3%82%81%E3%80%80%E3%82%92%E3%80%80%E3%81%BF%E3%81%9F",
  font =  "HiraKakuStd-W8",
  fontSize =  100,
  alignment =  "left",
  color    =  { 255, 255, 255, 1 },
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