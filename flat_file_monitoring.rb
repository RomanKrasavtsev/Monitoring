#!/usr/bin/env ruby

# Put time to log
puts Time.now

require_relative "settings"
require_relative "lib/mysql"
require_relative "lib/network"
require_relative "lib/redis"
require_relative "lib/ssh"
require_relative "lib/system"

class FlatFileMonitoring
  def initialize mysql_name, mysql_ip, mysql_user, mysql_password
    @mysql = Mysql.new(
      mysql_name,
      mysql_ip,
      mysql_user,
      mysql_password
    )

    @system = System.new

    @ssh = SSH.new(
      PROXY[:ip],
      PROXY[:user],
      PROXY[:password]
    )
  end

  def get_threads_connected
    @proxy.exec(@mysql.get_threads_connected).gsub!(/Threads_connected	/, "").gsub!(/\n/, "")
  end

  def get_db_size db
    @proxy.exec(@mysql.get_db_size db)
  end

  def get_df filesystem
    @proxy.exec(@system.get_df filesystem)
  end

  def safe_data host, service, parameter, data
    {
      host: host,
      service: service,
      parameter: parameter,
      value: data,
      date: Time.now
    }
  end
end


# MySQL
MYSQL.each do |server|
  mysql = Monitoring.new(server[:name], server[:ip], server[:user], server[:password])

  # threads_connected
  data = mysql.get_threads_connected
  result = mysql.set_data server[:name], "mysql", "threads_connected", data
  %x(say 'Ошибка') unless result["created"]

  # db_size
  server[:db].each do |db|
    data = mysql.get_db_size db
    result = mysql.set_data server[:name], "mysql", db, data
    %x(say 'Ошибка') unless result["created"]
  end
end

# System

# SYSTEM.each do |server|
#   system = Monitoring.new(server[:name], server[:ip], server[:user], server[:password])
#
#   # df
#   data = system.get_df "/"
#   result = mysql.set_data server[:name], "mysql", "threads_connected", data
#   %x(say 'Ошибка') unless result["created"]
# end
# df = ssh.exec("df -h")
#
# keenio.publish({
#   host: mysql.host,
#   service: "mysql",
#   value: get_threads_connected,
#   date: Time.now
# })
