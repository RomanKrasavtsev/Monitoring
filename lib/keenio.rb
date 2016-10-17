#!/usr/bin/env ruby

require "keen"

class KeenIO
  def initialize project, project_id, write_key, read_key
    @project_name = project
    Keen.project_id = project_id
    Keen.write_key = write_key
    Keen.read_key = read_key
  end

  def publish data
    Keen.publish(@project_name, data)
  end
end
