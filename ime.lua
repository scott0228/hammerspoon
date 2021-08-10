local function Chinese()
    hs.console.printStyledtext("chinese")
    hs.console.printStyledtext(hs.keycodes.currentSourceID())
    hs.keycodes.currentSourceID("im.rime.inputmethod.Squirrel.Rime")
end

local function English()
    hs.console.printStyledtext("English")
    hs.console.printStyledtext(hs.keycodes.currentSourceID())
    hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end

local function set_app_input_method(app_name, set_input_method_function, event)
    event = event or hs.window.filter.windowFocused
    hs.window.filter.new(app_name)
      :subscribe(event, function() set_input_method_function() end)
end
set_app_input_method('Hammerspoon', English, hs.window.filter.windowCreated)
set_app_input_method('Spotlight', English, hs.window.filter.windowCreated)
set_app_input_method('Terminal', English)
set_app_input_method('iTerm2', English)
set_app_input_method('Microsoft Edge', English)
set_app_input_method('Google Chrome', English)
set_app_input_method('Safari', English)
set_app_input_method('Code', English)
set_app_input_method('AnyDesk', English)
set_app_input_method('DBeaver', English)
set_app_input_method('Spring Tool Suite 4', English)
set_app_input_method('LINE', Chinese)
set_app_input_method('Telegram', Chinese)
-----------------------mine end-----------------------------
