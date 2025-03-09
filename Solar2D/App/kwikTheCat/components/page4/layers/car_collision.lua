local name = ...
local parent, root = newModule(name)

print("@@@@@", root) --  App.book.components.page4

local M = {
  name = "",
  class="collision",
  properties = {
    body          = "car",
    isRemoveOther = true,
    isRemoveSelf = true,
    othersGroup  = require(root.."groups.".."groupC")
  },
  actions = { onCollision="" },
}

return require("components.kwik.layer_physicsCollision").set(M)
