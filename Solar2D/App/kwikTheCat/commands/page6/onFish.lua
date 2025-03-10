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
    local event      = params.event
    local obj        = event.target
    --
    -- local alert = native.showAlert("Alert", "Hello", { "OK" } )
    -- printKeys(event.target)
    -- local conditions = require("App." .. UI.book..".common.conditions")
    -- local expressions = require("App." .. UI.book.."common.expressions")
    print("###")
    AC.Page:gotoPage("NEXT", "slideDown", 0, 3);
  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"onFish","actions":[{"command":"page.gotoPage","params":{"pageName":"NEXT","duration":0,"delay":0,"effect":"slideUp"}}]}
]]
--
return ActionCommand
