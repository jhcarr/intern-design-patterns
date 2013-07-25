# Example proxy pattern code. Specifically, this code represents a trivial implementation
# of the virtual proxy, where the proxy object stands in place of the expensive real object until
# the real object is actually needed. This allows the application to operate normally without even
# loading that expensive object.

require 'fileutils'
require File.expand_path('../proxyObject.rb', __FILE__)
require File.expand_path('../interface.rb', __FILE__)

# The client interface
# It has no idea about which methods are being forward to the real object,
# and which are simply being handled by the proxy object.

# Instead of initializing the giant real object, we use the proxy object instead
fileBrowser = ProxyObject.new

# Before we load any files, we can do some simple operations not requiring any actual file loading.
# If we had a GUI, we'd likely load it up.
gui = Interface.new

gui.openMainMenu
gui.openOptions
gui.closeMenus

fileBrowser.getFileSize('./files/aBigFile')

# Now we might actually want to load the file
fileBrowser.loadFile('./files/aBigFile')
