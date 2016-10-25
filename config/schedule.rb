# Learn more: http://github.com/javan/whenever

set :job_template, "/bin/zsh -l -c ':job'"
set :output, "#{Dir.pwd}/monitoring.log"

every 2.minutes do
 command "#{Dir.pwd}/monitoring.rb"
end
