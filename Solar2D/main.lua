local kwik = require "plugin.kwik"

system.setTapDelay(0.2)
--
if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
  local lldebugger = loadfile(os.getenv("LOCAL_LUA_DEBUGGER_FILEPATH"))()
  lldebugger.start()
end

-- kwik.restore()
-- kwik.autoUpdate()

kwik.useGradientBackground()

kwik.setCustomModule(
  "custom",
  {
    commands = {"myEvent"},
    components = {
      -- "align",
      "myComponent",
      "thumbnailNavigation",
      "index",
      "kwikTheCatCommon"
      -- "keyboardNavigation",
    }
  }
)

kwik.bootstrap {
  name = "kwikTheCat",
  editor = true,
  goPage = "page1",
  language = "", -- empty string "" is for a single language project
  position = {x = 0, y = 0},
  gotoLastBook = true,
  unitTest = false,
  httpServer = false,
  showPageName = true
} -- scenes.index

-- for product release
-- require("controller.index").bootstrap({name="interaction", edting = false, goPage = "button", position = {x=0, y=0}, common = common}) -- scenes.index
