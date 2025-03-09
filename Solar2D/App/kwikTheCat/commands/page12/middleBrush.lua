-- Code created by Kwik - Copyright: kwiksher.com
-- Version:
-- Project:
--
local ActionCommand = {}
local AC           = require("commands.kwik.actionCommand")
--
-----------------------------
-----------------------------
function ActionCommand:new()
  local command = {}
  --
  function command:execute(params)
    local UI         = params.UI
    local sceneGroup = UI.sceneGroup
    local layers      = UI.layers
    local obj        = params.obj


    AC.Canvas:brushColor(UI.canvas, unpack(AC.color(nil)) )
    AC.Canvas:brushSize(UI.canvas, 20  )
  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"middleBrush","actions":[{"command":"canvas.brush","params":{"color":"233,105,105,1","size":"20"}}]}
]]
--
return ActionCommand
