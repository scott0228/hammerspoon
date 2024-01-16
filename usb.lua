local logger = hs.logger.new('usb.lua', 'debug')

function usbDeviceCallback(data)
    logger.df("usbDeviceCallback: %s", hs.inspect(data))
end
  
usbWatcher = hs.usb.watcher.new(usbDeviceCallback)
usbWatcher:start()