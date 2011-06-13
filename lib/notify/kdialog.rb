module Notify
  if which('kdialog')
    def self.notify(title, message, option = {})
      system 'kdialog', '--passivepopup', message, '--title',title
    end
  end
end
