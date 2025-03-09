local M = {}

function M:create(UI)
  local car = UI.sceneGroup["car"]
  local wheel1 = UI.sceneGroup["wheel1"]
  self.name = "car_wheel1_wheel"
  self.class ="joint"
  self.properties = {
    bodyA = "car",
    bodyB = "wheel1",
    type = "wheel", --pistoin, distance, pulle, + defaultSet
    anchor_x = wheel1.x,
    anchor_y = wheel1.y,
    axisX = 0,
    axisY = 0
  }
end

return require("components.kwik.page_physicsJoint").set(M)
