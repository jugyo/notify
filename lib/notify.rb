require 'notify/notify-send'
require 'notify/growl'

unless defined? Notify
  module Notify
    def notify(text)
      $stderr.puts text
    end
  end
end

include Notify
