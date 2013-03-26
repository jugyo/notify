notify
======

"Notify" provides notification functionalities on cross platforms.

Feature
---------

Notify supports the following features:

- growl
- notify-send
- Growl for Windows (`ruby_gntp`)
- libnotify
- Mountain Lion Notification Center (`terminal-notifier`)

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

Notify also allows passing in an app name to replace the default "ruby":

    require 'notify'
    Notify.notify "title", "message", { app_name: "My App" }

Command
---------

    % notify title messages

Copyright
---------

Copyright (c) 2010 jugyo. See LICENSE for details.
