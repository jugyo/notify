unless defined? __DIR__
  __DIR__ = File.dirname(__FILE__)
end

if ENV['NOTIFY']
  begin
    require File.join(__DIR__, "notify/#{ENV['NOTIFY']}")
  rescue LoadError
  end
else
  unless defined? Notify
    Dir[File.join(__DIR__, "notify/*.rb")].each do |filename|
      require filename
    end
  end
end

unless defined? Notify
  module Notify
    def self.notify(title, message)
      # do nothing
    end
  end
end
