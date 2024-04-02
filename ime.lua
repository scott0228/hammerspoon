local logger = hs.logger.new('ime.lua')

local function Chinese()
    logger.d("change to chinese")
    logger.df("current is: %s", hs.keycodes.currentSourceID())
    hs.keycodes.currentSourceID("im.rime.inputmethod.Squirrel.Hant")
end

local function English()
    logger.d("change to English")
    logger.df("current is: %s", hs.keycodes.currentSourceID())
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
set_app_input_method('SpringToolSuite4', English)
set_app_input_method('Eclipse', English)
set_app_input_method('Firefox', English)
set_app_input_method('Arc', English)
set_app_input_method('LINE', Chinese)
set_app_input_method('Telegram', Chinese)
set_app_input_method('Raycast', English)
set_app_input_method('DBeaver', English)
-----------------------mine end-----------------------------

-- helper hotkey to figure out the app path and name of current focused window
hs.hotkey.bind({'ctrl', 'cmd'}, ".", function()
    hs.alert.show("App path:        "
    ..hs.window.focusedWindow():application():path()
    .."\n"
    .."App name:      "
    ..hs.window.focusedWindow():application():name()
    .."\n"
    .."IM source id:  "
    ..hs.keycodes.currentSourceID())
    logger.df("App name: %s", hs.window.focusedWindow():application():name())
end)