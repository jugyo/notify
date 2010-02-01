begin
  require 'ruby_gntp'

  module Notify
    def self.notify(title, message)
      GNTP.notify :app_name => "ruby", :title => title, :text => message, :icon => ""
    end
  end
rescue LoadError
end
