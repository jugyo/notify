module Notify
  if which('growlnotify')
    def self.notify(title, message, option = {})
      system 'growlnotify', '-t', title, '-m', message
    end
  end
end
