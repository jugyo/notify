require 'fileutils'

unless defined? __DIR__
  __DIR__ = File.dirname(__FILE__)
end

def which(prog, path=ENV['PATH'])
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

if ENV['NOTIFY']
  begin
    require File.join(__DIR__, "notify/#{ENV['NOTIFY']}")
  rescue LoadError
  end
else
  unless defined? Notify
    Dir[File.join(__DIR__, "notify/*.rb")].each do |filename|
      break if defined? Notify
      require filename
    end
  end
end

unless defined? Notify
  module Notify
    def self.notify(title, message)
      puts "#{title}: #{message}"
    end
  end
end
