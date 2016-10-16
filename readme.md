Отправлять данные на https://keen.io/
Получать данные через http://www.sinatrarb.com/
Для графиков использовать D3.js
Задеплоить на https://heroku.com/

System: CPU, Mem, VM, IO, DF
MySQL: Threads_connected

Переменные окружения:

# keen.io
ENV["KEEN_PROJECT_ID"]
ENV["KEEN_WRITE_KEY"]

# mysql
ENV["MYSQL_USERNAME"]
ENV["MYSQL_PASSWORD"]

# ssh
ENV["SSH_HOST"]
ENV["SSH_USER"]
ENV["SSH_PASSWORD"]
