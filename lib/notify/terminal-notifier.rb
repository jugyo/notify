module Notify
  begin
    require 'terminal-notifier'

    def self.notify(title, message, options = {})
      TerminalNotifier.notify(message, {:title => title}.merge(options))
    end
  rescue LoadError
  end
end
