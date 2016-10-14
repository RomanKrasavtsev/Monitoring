#!/usr/bin/env ruby

#gem install keen

KEEN_PROJECT_ID = ENV["KEEN_PROJECT_ID"]
KEEN_WRITE_KEY = ENV["KEEN_WRITE_KEY"]

Keen.publish(:signups, {
  :username => "lloyd",
  :referred_by => "harry"
})
