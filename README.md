notify
======

The "notify" provides a function to notify on cross platform.

Feature
---------

It supports followings:

- growl
- notify-send

Installation
---------

    gem install notify

Usage
---------

    require 'notify'
    Notify.notify "title", "message"

or

    ENV['NOTIFY'] = 'growlnotify'
    require 'notify'
    Notify.notify "title", "message"

Copyright
---------

Copyright (c) 2010 jugyo. See LICENSE for details.
