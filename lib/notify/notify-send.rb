if RUBY_PLATFORM.downcase =~ /linux/ && system('which notify-send 2>&1 > /dev/null')
  module Notify
    def self.notify(title, message)
      system 'notify-send', title, message
    end
  end
end
