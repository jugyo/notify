notify
======

The "notify" provides a function to notify on cross platform.

Feature
---------

It supports followings:

- growl
- notify-send
- Growl for Windows (ruby_gntp)

Installation
---------

    gem install notify

Usage
---------

    require 'notify'
    Notify.notify "title", "message"

or

    require 'notify'
    Notify.setup :library => 'growlnotify'
    Notify.notify "title", "message"

Copyright
---------

Copyright (c) 2010 jugyo. See LICENSE for details.
