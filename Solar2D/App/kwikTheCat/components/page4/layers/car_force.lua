local M = {
  name = NIL,
  class="force",
  properties = {
    body = "car",
    event = "touch",
    isInitial = false,
    isImpluse = true,
    type = "pull", -- push, none
    xForce = 0,
    yForce = 0,
  }
}

return require("components.kwik.layer_physicsForce").set(M)
