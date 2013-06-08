module Notify
  if which('notify-send')
    def self.notify(title, message, option = {})
      iconargs = option.key?(:icon) ? ["-i", option[:icon]] : []
      system 'notify-send', title, html_escape(message), *iconargs
    end
  end
end
