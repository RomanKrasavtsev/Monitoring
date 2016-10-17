require 'sinatra'

class KeenIO
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
