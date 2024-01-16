local log = hs.logger.new('usb.lua', 'debug')

function usbDeviceCallback(data)
    log.d("usbDeviceCallback: "..hs.inspect(data))
end
  
usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()