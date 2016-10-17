#!/usr/bin/env ruby

require_relative "lib/mysql"
require_relative "lib/ssh"
require_relative "lib/keenio"

mysql = Mysql.new(
  ENV["MYSQL_HOST"],
  ENV["MYSQL_USER"],
  ENV["MYSQL_PASSWORD"]
)

ssh = Ssh.new(
  ENV["SSH_HOST"],
  ENV["SSH_USER"],
  ENV["SSH_PASSWORD"]
)

keenio = KeenIO.new(
  ENV["KEEN_PROJECT_NAME"],
  ENV["KEEN_PROJECT_ID"],
  ENV["KEEN_WRITE_KEY"],
  ENV["KEEN_READ_KEY"]
)

# MySQL
threads_connected = ssh.exec(mysql.get_threads_connected).gsub!(/Threads_connected	/, "").gsub!(/\n/, "")

result = keenio.publish({
  host: mysql.host,
  service: "mysql",
  parameter: "threads_connected",
  value: threads_connected,
  date: Time.now
})

%x(say 'Ошибка') unless result["created"]

# # System
# df = ssh.exec("df -h")
#
# keenio.publish({
#   host: mysql.host,
#   service: "mysql",
#   value: get_threads_connected,
#   date: Time.now
# })
