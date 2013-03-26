module Notify
  begin
    require 'ruby_gntp'

    def self.notify(title, message, option = {})
      GNTP.notify :app_name => option[:app_name] || "ruby", :title => title, :text => message, :icon => option[:icon] || "", :sticky => option[:sticky] || false
    end
  rescue LoadError
  end
end
