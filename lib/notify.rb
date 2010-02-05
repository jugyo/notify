module Notify
  @@library_name = nil

  def self.notify(title, message, option = {})
    # do nothing
  end

  def self.setup(option = {})
    unless defined? __DIR__
      __DIR__ = File.dirname(__FILE__)
    end

    if option[:library]
      begin
        require File.join(__DIR__, "notify/#{option[:library]}")
      rescue LoadError
      end
    end

    if @@library_name.nil?
      Dir[File.join(__DIR__, "notify/*.rb")].each do |filename|
        break unless @@library_name.nil?
        require filename
      end
    end
  end

  def self.library_name
    @@library_name
  end
end

if Notify.library_name.nil?
  Notify.setup
end
