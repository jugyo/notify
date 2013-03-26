module Notify
  begin
    require 'ruby-growl'

    def self.notify(title, message, option = {})
      @@growl = Growl.new 'localhost', option[:app_name] || "ruby"
      @@growl.add_notification 'notify'
      @@growl.notify 'notify', title, message, option[:priority] || 0, option[:sticky] || false
    end
  rescue LoadError
  end
end
