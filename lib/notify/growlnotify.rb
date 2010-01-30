if system('which growlnotify 2>&1 > /dev/null')
  module Notify
    def self.notify(title, message)
      system 'growlnotify', '-t', title, '-m', message
    end
  end
end
