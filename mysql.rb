#!/usr/bin/env ruby

class Mysql
  attr_reader :host

  def initialize host, username, password
    @host = host
    @user = username
    @password = password
  end

  def get_threads_connected
    "mysql -h #{@host} -u #{@user} -p#{@password} mysql -Bse 'show status where variable_name = \"Threads_connected\";'"
  end
end
