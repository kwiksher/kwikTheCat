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

    AC.Canvas:erase(UI.canvas)

  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"clear","actions":[{"command":"canvas.erase","params":[]}]}
]]
--
return ActionCommand
