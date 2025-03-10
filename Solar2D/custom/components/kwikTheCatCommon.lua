local M = {}

M.components = {
  {page = "page1", name = "fish"},
  {page = "page1", name = "fish_button"},
  {page = "page1", name = "starfish"},
  {page = "page1", name = "starfish_button"}
}

M.commands = {
  {page = "page1", name = "nextPage"},
  {page = "page1", name = "previousPage"}
}

M.ignored = table:mySet {"page1", "page12"}

local App = require("controller.Application")
local isSimulator = (system.getInfo("environment") == "simulator")

M.appDir = "App.kwikTheCat."
M.modules = {}
---
function M:init(UI)
  if not self.ignored[tostring(UI.page)] then
    for i = 1, #M.components do
      local page = self.components[i].page
      local name = self.components[i].name
      local mod = require(self.appDir .. "components." .. page .. ".layers." .. name)
      if mod then
        table.insert(M.modules, mod)
      else
        print("Error module not found", page, name)
      end
      if name == "fish" then
        if isSimulator then
          mod.mX = display.contentCenterX + 480 / 2 - mod.imageWidth/2
          mod.mY = display.contentCenterY + 320 / 2 - mod.imageHeight/2
        else
          mod.mX = display.contentCenterX + display.actualContentWidth / 2 - mod.imageWidth/2
          mod.mY = display.contentCenterY + display.actualContentHeight / 2 - mod.imageHeight/2
        end
      elseif name == "starfish" then
        if isSimulator then
          mod.mX = display.contentCenterX - 480 / 2 +  mod.imageWidth/2
          mod.mY = display.contentCenterY + 320 / 2 - mod.imageHeight/2
        else
          mod.mX = display.contentCenterX - display.actualContentWidth / 2 + mod.imageWidth/2
          mod.mY = display.contentCenterY + display.actualContentHeight / 2 - mod.imageHeight/2
        end
      end
    end
    --
    local app = UI.scene.app -- App.get()
    print(UI.page)
    local commands = {}
    for i = 1, #self.commands do
      local page = self.commands[i].page
      local eventName = self.commands[i].name
      if app.context.commands[eventName] == nil then
        app.context:mapCommand(UI.page .. "." .. eventName, self.appDir .. "commands." .. page .. "." .. eventName)
        print("", self.appDir .. "commands." .. page .. "." .. eventName)
      end
      table.insert(commands, eventName)
    end
    UI.scene.customCommands = commands
    print("$$$$$$", #UI.scene.customCommands)
  end
end
--
function M:create(UI)
  print(UI.page)
  if not self.ignored[tostring(UI.page)] then
    for i = 1, #self.components do
      self.modules[i]:create(UI)
    end
  end
end
--
function M:didShow(UI)
  if not self.ignored[tostring(UI.page)] then
    for i = 1, #self.components do
      self.modules[i]:didShow(UI)
      self.modules[i].obj:toFront()
    end
  end
end
--
function M:didHide(UI)
  if not self.ignored[tostring(UI.page)] then
    for i = 1, #self.components do
      self.modules[i]:didHide(UI)
    end
  end
end
--
function M:destroy()
  if not self.ignored[tostring(UI.page)] then
    for i = 1, #self.components do
      self.modules[i]:destroy(UI)
    end
  end
end
--
return M
