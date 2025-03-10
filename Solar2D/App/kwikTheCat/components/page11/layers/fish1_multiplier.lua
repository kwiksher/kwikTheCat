local parent,root, M = newModule(...)
local layerProps = require(M.layerMod).layerProps or {}
local M = {
  name = "fish1",
  properties = {
    target         = "fish1",
    alphaMax       = 1,
    alphaMin       = 1,
    autoPlay       = true,
    enableWind    = false,
    enablePhysics  = true,
    enableSeonsor  = true,
    fixedDistance  = false,
    fixedScaleMax   = false,
    fixedScaleMin   = false,
    gravityX        = -1,
    gravityY        = 1,
    interval       = 2,
    numOfCopies    = 4,
    playForever    = true,
    rotationMax    = 90,
    rotationMin    = 90,
    physicsShape   = "",
    weightMax      = 30,
    weightMin      = 1,
    windSpeed      = 10,
    xEnd           = 1920+600,
    xSaleMax       = 1.5,
    xScaleMin      = 0.5,
    xStart         = 1000,
    yEnd           = 0,
    ySaleMax       = 1.5,
    yScaleMin      = 0.5,
    yStart         = -400,
  },
  layerProps = layerProps
}
--
return require("components.kwik.layer_multiplier").set(M)
