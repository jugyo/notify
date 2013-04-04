module Notify
  if which('kdialog')
    def self.notify(title, message, option = {})
      iconargs = option.key?(:icon) ? ["--icon", option[:icon]] : ["",""]
      system 'kdialog', '--passivepopup', message, '--title',title, iconargs[0], iconargs[1]
    end
  end
end
