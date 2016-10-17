require 'sinatra'

get '/' do
  <<-EOF
    <h1>
      Dashboard
    </h1>
  EOF
end
