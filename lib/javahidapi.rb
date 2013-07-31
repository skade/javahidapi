require "javahidapi/version"

begin
  require './hidapi-1.1.jar'
rescue LoadError
  warn("put hidapi-1.1.jar in your classpath to use a game controller")
  return
end

com.codeminders.hidapi.ClassPathLibraryLoader.loadNativeHIDLibrary

at_exit do
  HIDManager.instance.release
end

module Javahidapi
  module VendorIDs
    SONY = 1356
  end
  module ProductIDs
    PS3_CONTROLLER = 616
  end

  def self.manager
    com.codeminders.hidapi.HIDManager.instance
  end
end
