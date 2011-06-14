module Notify
  begin
    require 'libnotify'
    def self.notify(title, message, option={})
      Libnotify.show(:summary => title, :body => html_escape(message), :icon_path => option[:icon])
    end
  rescue LoadError
  end
end
