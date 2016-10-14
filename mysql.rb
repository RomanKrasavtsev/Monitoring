#!/usr/bin/env ruby

# gem install net-ssh
require "net/ssh"
require "pg"

# Proxy
proxy_host = ENV["PROXY_HOST"]
proxy_user = ENV["PROXY_USER"]
proxy_password = ENV["PROXY_PASSWORD"]

# MySQL
mysql_host = ENV["MYSQL_HOST"]
mysql_username = ENV["MYSQL_USERNAME"]
mysql_password = ENV["MYSQL_PASSWORD"]
mysql_database = ENV["MYSQL_DATABASE"]
mysql_master = ENV["MYSQL_MASTER"]
mysql_slave = ENV["MYSQL_SLAVE"]

# PostgreSQL
pg_host = ENV["PG_HOST"]
pg_username = ENV["PG_USERNAME"]
pg_password = ENV["PG_PASSWORD"]
pg_database = ENV["PG_DATABASE"]

Net::SSH.start(proxy_host, proxy_user, password: proxy_password) do |ssh|
  master_threads_connected = ssh.exec!("mysql -h #{mysql_master} -u #{mysql_username} -p#{mysql_password} mysql -Bse 'show status where variable_name = \"Threads_connected\";'")
  slave_threads_connected = ssh.exec!("mysql -h #{mysql_slave} -u #{mysql_username} -p#{mysql_password} mysql -Bse 'show status where variable_name = \"Threads_connected\";'")

  puts master_threads_connected
  puts slave_threads_connected
end

pg = PG::Connection.new(host, port, options, tty, dbname, user, password)
pg.exec("SELECT * FROM pg_stat_activity" );
