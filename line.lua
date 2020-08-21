function logoutLine(eventType)
    if (eventType == hs.caffeinate.watcher.screensDidUnlock) then
        hs.osascript.applescript('tell application "Line" to open')
    elseif (eventType == hs.caffeinate.watcher.screensDidLock) then
        --锁屏时似乎无法进行屏幕操作
        hs.osascript.applescript('tell application "Line" to quit')
    end
end

caffeinateWatcher = hs.caffeinate.watcher.new(logoutLine)
caffeinateWatcher:start()