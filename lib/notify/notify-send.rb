if which('notify-send')
  module Notify
    def self.notify(title, message, option = {})
      system 'notify-send', title, message
    end
  end
end
