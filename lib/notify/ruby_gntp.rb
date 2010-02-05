begin
  require 'ruby_gntp'

  module Notify
    def self.notify(title, message, option = {})
      GNTP.notify :app_name => "ruby", :title => title, :text => message, :icon => option[:icon] || "", :sticky => option[:sticky] || false
    end
  end
rescue LoadError
end
