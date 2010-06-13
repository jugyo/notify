if system('which kdialog > /dev/null 2>&1')
  module Notify
    def self.notify(title, message, option = {})
      system 'kdialog', '--passivepopup', message, '--title',title
    end
  end
end
