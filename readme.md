Отправлять данные на https://keen.io/ <br>
Получать данные через http://www.sinatrarb.com/ <br>
Для графиков использовать https://d3js.org/ <br>
Задеплоить на https://heroku.com/ <br>
<br>
System: CPU, Memory, VM, IO, DF <br>
MySQL: Threads_connected <br>

# Environment variables

## mysql
export MYSQL_HOST=""
export MYSQL_USER=""
export MYSQL_PASSWORD=""
export MYSQL_DATABASE=""

## keen.io
export KEEN_PROJECT_NAME=""
export KEEN_PROJECT_ID=""
export KEEN_WRITE_KEY=""
export KEEN_READ_KEY=""

## ssh
export SSH_HOST=""
export SSH_USER=""
export SSH_PASSWORD=""

# Dependences
gem install keen
gem install net-ssh <br>
gem install sinatra <br>
