local parent,root, M = newModule(...)
local layerProps = require(M.layerMod).layerProps or {}
local M = {
  name = "fish1",
  properties = {
    target         = "fish1",
    alphaMax       = 1,
    alphaMin       = 1,
    autoPlay       = true,
    enableWind    = true,
    enablePhysics  = true,
    enableSeonsor  = true,
    fixedDistance  = false,
    fixedScaleMax   = false,
    fixedScaleMin   = false,
    gravityY        = 4,
    interval       = 2,
    numOfCopies    = 4,
    playForever    = true,
    rotationMax    = 360,
    rotationMin    = 0,
    physicsShape   = "",
    weightMax      = 30,
    weightMin      = 1,
    windSpeed      = 10,
    xEnd           = 480*4,
    xSaleMax       = 1.5,
    xScaleMin      = 0.5,
    xStart         = 50*4,
    yEnd           = 0,
    ySaleMax       = 1.5,
    yScaleMin      = 0.5,
    yStart         = -100*4,
  },
  layerProps = layerProps
}
--
return require("components.kwik.layer_multiplier").set(M)
