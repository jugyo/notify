if system('which notify-send 2>&1 > /dev/null')
  module Notify
    def self.notify(title, message, option = {})
      system 'notify-send', title, message
    end
  end
end
