if RUBY_PLATFORM.downcase =~ /linux/ &&
  system('which notify-send 2>&1 > /dev/null')
  module Notify
    def notify(text)
      system 'notify-send', text
    end
  end
end
