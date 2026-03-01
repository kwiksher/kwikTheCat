require "lunatest"
--

local M = {
  --
  run = function (props)
    --print("============ lunatest =============")
    lunatest.reset_suites()
    --
    local UI = props.UI
    --
    local function set (book, page)
      local pagePart = page:match("([^_]+)")
      if book == UI.book and pagePart == UI.page then
        -- print("  ", "test."..book..".suite_"..page)
        lunatest.suite("Test."..book..".suite_"..page, props)
      end
    end


    set("kwikTheCat", "page1_action")
    -- set("kwikTheCat", "page1_animation")
    -- set("kwikTheCat", "page1_audio")
    -- set("kwikTheCat", "page1_button")
    -- set("kwikTheCat", "page1_group")
    -- set("kwikTheCat", "page1_interactions")
    -- set("kwikTheCat", "page1_page_props")
    -- set("kwikTheCat", "page1_replacements")
    -- set("kwikTheCat", "page1_select_copy_paste")

    set("kwikTheCat", "page2_sync2audio")
    set("kwikTheCat", "page3_drag")
    set("kwikTheCat", "page3_button")
    set("kwikTheCat", "page3_animation")
    set("kwikTheCat", "page4_physics")
    set("kwikTheCat", "page12_canvas")

    lunatest.run()
    -- print("============   end    =============")
  end
}

return M