require "javahidapi/version"
require 'hidapi-1.1.jar'


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
