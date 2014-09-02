#!/usr/bin/ruby

require "weather-api"

# $ gem install weather-api
#
# Check weather for your city
# Get WEOID from https://weather.yahoo.com/ by searching your city
# and getting it from URL (e.g. https://weather.yahoo.com/romania/cluj/cluj-napoca-869897/)

CLUJ = 869897

response = Weather.lookup(CLUJ, Weather::Units::CELSIUS)

puts "#{response.location.city} - #{response.condition.temp} °C - #{response.condition.text}"
