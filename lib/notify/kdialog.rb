if which('kdialog')
  module Notify
    def self.notify(title, message, option = {})
      system 'kdialog', '--passivepopup', message, '--title',title
    end
  end
end
