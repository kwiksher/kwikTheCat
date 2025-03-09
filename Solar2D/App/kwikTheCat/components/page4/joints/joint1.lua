local M = {
  name = "",
  class ="joint",
  properties = {
    anchor_x = 0,
    anchor_y = 0,
    bodyA = "",
    bodyB = "",
    isMotorEnabled=false,
    maxMotorTorque = NIL,
    motorForce = NIL,
    motorSpeed = NIL,
    isLimitEnabled = true,
    rotationX = 0,
    rotationY = 0,
    type = "pivot", --pistoin, distance, pulle, + defaultSet
  }
}

function M:init(UI)
end
--
function M:create(UI)
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