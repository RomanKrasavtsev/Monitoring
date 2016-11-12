class Mysql
  attr_reader :name

  def initialize name, ip, username, password
    @name = name
    @ip = ip
    @user = username
    @password = password
  end

  def exec sql
    "mysql -h #{@ip} -u #{@user} -p#{@password} mysql -Bse '#{sql}'"
  end

  def get_threads_connected
    exec "SHOW status WHERE variable_name = \"Threads_connected\";"
  end

  def get_db_size name
    exec "SELECT Round(Sum(data_length + index_length) / 1024 / 1024, 0) as \"size\" FROM information_schema.tables WHERE table_schema = \"#{name}\";"
  end
end

