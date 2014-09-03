#!/usr/bin/ruby

require "gmail"

# $ gem install ruby-gmail
#
# Get number of unread emails from gmail
# Fill with your username and password
# Give this file a proper permission :D
# If script is not working, probably the shebang is not good. You should point
# to ruby from rbenv/rvm instead.

USERNAME = "xxx"
PASSWORD = "xxx"

Gmail.new(USERNAME, PASSWORD) do |g|
    p g.inbox.count(:unread)
end
