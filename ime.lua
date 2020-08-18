local function Chinese()
    hs.keycodes.currentSourceID("im.rime.inputmethod.Squirrel.Rime")
end

local function English()
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
  set_app_input_method('Google Chrome', English)
  set_app_input_method('Safari', English)
  set_app_input_method('Line', Chinese)
  -----------------------mine end-----------------------------