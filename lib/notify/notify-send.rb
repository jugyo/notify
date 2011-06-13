module Notify
  if which('notify-send')
    def self.notify(title, message, option = {})
      system 'notify-send', title, message
    end
  end
end
