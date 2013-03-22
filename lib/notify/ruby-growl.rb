module Notify
  begin
    require 'ruby-growl'

    @@growl = Growl.new 'localhost', 'ruby'
    @@growl.add_notification 'notify'
    def self.notify(title, message, option = {})
      @@growl.notify 'notify', title, message, option[:priority] || 0, option[:sticky] || false
    end
  rescue LoadError
  end
end
