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
    local layers     = UI.layers
    local event      = params.event
    local obj        = event.target
    --
    -- Check if the clicked object has an associated bottomCircle
    local bottomCircleName = "string_bottomCircle"
    local bottomCircle = sceneGroup[bottomCircleName]

    print(bottomCircleName)

    if not bottomCircle then
      -- No circle associated with this object
      -- local missedText = display.newText({
      --   text = "Missed!",
      --   x = display.contentCenterX,
      --   y = display.contentCenterY - 100,
      --   font = native.systemFontBold,
      --   fontSize = 48
      -- })
      -- missedText:setFillColor(1, 0, 0)
      -- sceneGroup:insert(missedText)

      -- -- Remove the text after 1 second
      -- timer.performWithDelay(1000, function()
      --   if missedText and missedText.removeSelf then
      --     missedText:removeSelf()
      --   end
      -- end)
    else
      -- Check if the touch event location is within the bounds of the bottomCircle
      local touchX, touchY = obj.x, obj.y
      local circleRadius = bottomCircle.path.radius or 20 -- Default if not available

      -- Calculate distance between touch point and circle center
      local dx = touchX - bottomCircle.x
      local dy = touchY - bottomCircle.y
      local distance = math.sqrt(dx*dx + dy*dy)

      if distance <= circleRadius then
        -- Hit! The touch is within the circle
        local hitText = display.newText({
          text = "Hit!",
          x = display.contentCenterX,
          y = display.contentCenterY - 100,
          font = native.systemFontBold,
          fontSize = 48
        })
        hitText:setFillColor(0, 1, 0)
        sceneGroup:insert(hitText)

        -- Remove the text after 1 second
        timer.performWithDelay(1000, function()
          if hitText and hitText.removeSelf then
            hitText:removeSelf()
          end
        end)

        -- Continue with the next page action
        AC.Page:gotoPage("NEXT", "slideDown", 0, 3);
      else
        -- Missed! The touch is outside the circle
        local missedText = display.newText({
          text = "Missed!",
          x = display.contentCenterX,
          y = display.contentCenterY - 100,
          font = native.systemFontBold,
          fontSize = 48
        })
        missedText:setFillColor(1, 0, 0)
        sceneGroup:insert(missedText)

        -- Remove the text after 1 second
        timer.performWithDelay(1000, function()
          if missedText and missedText.removeSelf then
            missedText:removeSelf()
          end
        end)
      end
    end
  end
  return setmetatable( command, {__index=AC})
end
--
ActionCommand.model = [[
{"name":"onFish","actions":[{"command":"page.gotoPage","params":{"pageName":"NEXT","duration":0,"delay":0,"effect":"slideUp"}}]}
]]
--
return ActionCommand