require 'sinatra'

class KeenIO
  @@KEEN_PROJECT_NAME = ENV["KEEN_PROJECT_NAME"]
  @@KEEN_PROJECT_ID = ENV["KEEN_PROJECT_ID"]
  @@KEEN_READ_KEY = ENV["KEEN_READ_KEY"]

  def self.get_values_as_charts
    "Charts"
  end

  def self.get_values_as_json
  end
end

get '/' do
  <<-EOF
    <h1>
      Dashboard
    </h1>
    #{KeenIO.get_values_as_charts}
  EOF
end
