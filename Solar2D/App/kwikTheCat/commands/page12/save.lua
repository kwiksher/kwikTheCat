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

    -- local conditions = require("App." .. UI.book..".common.conditions")
    -- local expressions = require("App." .. UI.book.."common.expressions")

    AC.Screenshot:take("Screenshot", "Screen Capture Saved to Library",  true,
      {  }
    )
  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"save","actions":[{"command":"screenshot.take","params":{"shutter":"true"}}]}
]]
--
return ActionCommand
