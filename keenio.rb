#!/usr/bin/env ruby

# gem install keen

class KeenIO
  def initialize
    Keen.project_id = ENV["KEEN_PROJECT_ID"]
    Keen.write_key = ENV["KEEN_WRITE_KEY"]
  end

  def publush data
    # server, type, value, date
    Keen.publish(data)
  end
end
