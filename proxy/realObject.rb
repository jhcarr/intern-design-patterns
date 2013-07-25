# The 'Real' object. Holds all of the real data and methods
# Gigantic and slow

class RealGiganticSlowFile

  def loadFile(path)
    # This sleep represents the slow, painful loading of a gigantic file of some sort
    sleep(5)
    # Return the contents of the giant file normally
    File.read(path)
  end

  def getFileSize(path)
    "Size: #{File.size(path)}"
  end
end
