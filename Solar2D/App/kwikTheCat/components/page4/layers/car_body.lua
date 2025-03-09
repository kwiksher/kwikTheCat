local M = {
  name = "car",
  class="body",
  dataPath = NIL, -- physicsEdtior(CodeAndWeb)
  dataShape ={}
}


function M:create(UI)
  local car = UI.sceneGroup["car"]
  self.properties = {
    bounce = 0,
    density = 0,
    friction = 0,
    gravityScale = 1,
    isSensor = false,
    radius = NIL, -- NIL means use object width/2
    shape   =" circle", -- "circle", -- rect,  path
    type = "static",
  }

end

return require("components.kwik.layer_physicsBody").set(M)
