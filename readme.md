Отправлять данные на https://keen.io/ <br>
Получать данные через http://www.sinatrarb.com/ <br>
Для графиков использовать D3.js <br>
Задеплоить на https://heroku.com/ <br>
<br>
System: CPU, Mem, VM, IO, DF <br>
MySQL: Threads_connected <br>

Переменные окружения: <br>
# keen.io
ENV["KEEN_PROJECT_ID"] <br>
ENV["KEEN_WRITE_KEY"] <br>
ENV["KEEN_READ_KEY"] <br>

# mysql
ENV["MYSQL_USER"] <br>
ENV["MYSQL_PASSWORD"] <br>

# ssh
ENV["SSH_HOST"] <br>
ENV["SSH_USER"] <br>
ENV["SSH_PASSWORD"] <br>

# Dependences
gem install net-s <br>
