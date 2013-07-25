require 'fileutils'
require File.expand_path('../realObject.rb', __FILE__)

# The proxy object
# Stands in place of the real object and only brings it in when absolutely necessary

class ProxyObject

  # By using this proxy object, we can hold off on using this method to load the gigantic
  # expensive object until we really need it. In the mean time, we can do other operations,
  # such as load a GUI and provide the interface without the weight of the real object
  # slowing us down.

  # Also, we can use this abstracted method call to better prepare the
  # app for the upcoming slow down while the object loads. In a real app, one could use this
  # opportunity to throw down a loading screen of some sort, rather than just let the interface
  # bog down and confuse the user.
  def loadFile(path)
    # This is an example of loading on demand.
    # While the real object is 'getting the bytes' of our huge file, we can put up our loading
    # notification. Note that this is the first request we've actually sent to the expensive
    # real object.
    puts 'Loading an ungodly large file, please wait...'
    fileObject = RealGiganticSlowFile.new
    fileObject.loadFile(path)
    puts 'Done!'
    puts fileObject.inspect
  end

  def getFileSize(path)
    puts "Size: #{File.size(path)}"
  end
end
