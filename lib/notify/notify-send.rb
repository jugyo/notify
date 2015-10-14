module Notify
  if which('notify-send')
    def self.notify(title, message, option = {})
      args = []
      args << "-i" << option[:icon] if option.key?(:icon)
      args << "-t" << option[:time].to_s if option.key?(:time)
      args << "-a" << option[:app_name].to_s if option.key?(:app_name)
      args << "-u" << option[:urgency].to_s if option.key?(:urgency)
      args << "-c" << option[:category].to_s if option.key?(:category)
      args << "-h" << option[:hint].to_s if option.key?(:hint)      
      system 'notify-send', title, html_escape(message), *args
    end
  end
end
