if system('which growlnotify 2>&1 > /dev/null')
  module Notify
    @@library_name = 'growlnotify'
    def self.notify(title, message, option = {})
      system 'growlnotify', '-t', title, '-m', message
    end
  end
end
