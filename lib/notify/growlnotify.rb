if system('which growlnotify > /dev/null 2>&1')
  module Notify
    def self.notify(title, message, option = {})
      system 'growlnotify', '-t', title, '-m', message
    end
  end
end
