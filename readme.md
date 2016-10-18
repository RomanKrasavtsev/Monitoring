Отправлять данные на https://keen.io/ <br>
Получать данные через http://www.sinatrarb.com/ <br>
Для графиков использовать https://d3js.org/ <br>
Задеплоить на https://heroku.com/ <br>
<br>
System: CPU, Memory, VM, IO, DF <br>
MySQL: Threads_connected <br>

# Dependences
gem install keen <br>
gem install net-ssh <br>
gem install sinatra <br>

# Delete all data from KeenIO
curl "https://api.keen.io/3.0/projects/PROJECT_ID/events/PROJECT_NAME" \
  -H "Authorization: MASTER_KEY" \
  -X DELETE
