-- $weight=4
--
local app = require "controller.Application"
local M = require("components.kwik.layer_image").new()

local layerProps = {
  blendMode = "normal",
  height    =  711 - 661,
  width     = 1014 - 912 ,
  kind      = pixel,
  name      = "dish",
  type      = "png",
  x         = 1014 + (912 -1014)/2,
  y         = 661 + (711 - 661)/2,
  alpha     = 100/100,
}

M.align       = ""
M.randXStart  = nil
M.randXEnd    = nil
M.randYStart  = nil
M.randYEnd    = nil
--
M.scaleX     = nil
M.scaleY     = nil
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
  UI.layers[#UI.layers] = self:createImage(UI)
end
--
function M:didShow(UI)
end
--
function M:didHide(UI)
end
--
function  M:destory(UI)
end
--
return M