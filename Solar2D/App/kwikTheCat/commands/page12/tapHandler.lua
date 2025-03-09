-- Code created by Kwik - Copyright: kwiksher.com
-- Version:
-- Project:
--
local ActionCommand = {}
local AC           = require("commands.kwik.actionCommand")
local json = require("json")
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

    print("#", params.obj, params.event)
    -- printKeys(params.event.event)
    -- printTable(params.event)
    -- printTable(params.event.event.target)
    local target = params.event.target or {}
    print(target.name, target.layer)

    -- local conditions = require("App." .. UI.book..".common.conditions")
    -- local expressions = require("App." .. UI.book.."common.expressions")

    local buttonMap = {
      color1="yellow",
      color2="white",
      color3="red",
      color4="pink",
      color5="lightBlue",
      color6="blue",
      color7="green",
      color8="black",
    }
    -- local new_actions = {"brushWhite", "brushYellow", "brushLightBlue", "brushBlue", "brushPink", "brushGreen"}
    -- New words
    local colorMap = {
      white     = {1,1,1,1},
      yellow    = {1,1,0,1},
      blue      = {0,0,1,1},
      lightBlue = {150/255,200/255,0,1},
      red       = {1,0,0,1},
      black     = {0,0,0,1},
      pink      = {1,0,1,1},
      green     = {0,1,0,1}
    }

    print(json.encode(colorMap[buttonMap[target.name]]))

    local canvas = UI.canvas or {}
    AC.Canvas:brushColor(canvas, unpack(colorMap[buttonMap[target.name]]) )
  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"tapHandler","actions":[{"command":"mycode","params":{}}]}
]]

-- {"name":"tapHandler","actions":[{"command":"canvas.brush","params":{"color":"0,0,0,1"}}]}

ActionCommand.readonly = true
--
return ActionCommand
