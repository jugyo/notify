begin
  require 'libnotify'
  module Notify
    def self.notify(title, message, option={})
      Libnotify.show(:summary => title, :body => message, :icon_path => option[:icon])
    end
  end
rescue LoadError
end
