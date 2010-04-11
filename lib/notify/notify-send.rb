if system('which notify-send > /dev/null 2>&1')
  module Notify
    def self.notify(title, message, option = {})
      system 'notify-send', title, message
    end
  end
end
