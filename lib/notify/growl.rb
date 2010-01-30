begin
  require 'ruby-growl'

  module Notify
    @@growl = Growl.new 'localhost', 'ruby', ['notify']
    def self.notify(title, message)
      @@growl.notify 'notify', title, message
    end
  end
rescue LoadError
end
