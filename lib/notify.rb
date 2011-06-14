require 'fileutils'
require 'erb'

module Notify
  def self.which(prog, path=ENV['PATH'])
    if RUBY_PLATFORM.downcase =~ /mswin(?!ce)|mingw|bccwin|cygwin/
      path.split(File::PATH_SEPARATOR).each {|dir|
        f = File.join(dir,prog+".exe")
        return f if File.executable?(File.join(f)) && !File.directory?(f)
      }
      nil
    else
      return system("which #{prog} > /dev/null 2>&1")
    end
  end

  def self.html_escape(text)
    ERB::Util.html_escape(text)
  end
end

dir = File.dirname(__FILE__)
if ENV['NOTIFY']
  require File.join(dir, "notify/#{ENV['NOTIFY']}")
else
  Dir[File.join(dir, "notify/*.rb")].each do |filename|
    break if Notify.methods.include?(:notify)
    require filename
  end
end

module Notify
  unless methods.include?(:notify)
    def self.notify(title, message, options = {})
      puts "#{title}: #{message}"
    end
  end
end
