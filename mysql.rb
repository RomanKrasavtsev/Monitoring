#!/usr/bin/env ruby

class Mysql
  def initialize host
    mysql_host = host
    MYSQL_USERNAME = ENV["MYSQL_USERNAME"]
    MYSQL_PASSWORD = ENV["MYSQL_PASSWORD"]
  end

  def get_threads_connected
    "mysql -h #{mysql_host} -u #{MYSQL_USERNAME} -p#{MYSQL_PASSWORD} mysql -Bse 'show status where variable_name = \"Threads_connected\";'"
  end
end
