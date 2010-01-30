$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'rubygems'
require 'notify'

Notify.notify 'title', 'message'
