local M = {
  name = NIL,
  class="collision",
  properties = {
    body          = "car",
    isRemoveOther = true,
    isRemoveSelf = true,
    othersGroup  = "groupC"
  },
  actions = { onCollision="" },
}

return require("components.kwik.layer_physicsCollision").set(M)
