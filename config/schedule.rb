# Learn more: http://github.com/javan/whenever

set :job_template, "/bin/zsh -l -c ':job'"
set :output, "#{Dir.pwd}/flat_file_monitoring.log"

every 1.minutes do
  command "#{Dir.pwd}/monitoring.rb system_cpu"
  command "#{Dir.pwd}/monitoring.rb system_memory"
  command "#{Dir.pwd}/monitoring.rb system_vm"
  command "#{Dir.pwd}/monitoring.rb mysql_threads_connected"
end

every 10.minutes do
  command "#{Dir.pwd}/monitoring.rb mysql_database_size"
  command "#{Dir.pwd}/monitoring.rb system_df"
end
