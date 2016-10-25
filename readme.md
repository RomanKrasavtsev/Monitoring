# Description
- Send data to https://keen.io/
- Get data and show dashboard http://www.sinatrarb.com/
- Charts https://d3js.org/
- Deploy to https://heroku.com/

# Requests
## System
- CPU
- Memory
- VM
- DF

## MySQL
- Threads_connected
- Database size

# Delete all data from KeenIO
curl "https://api.keen.io/3.0/projects/PROJECT_ID/events/PROJECT_NAME" \
  -H "Authorization: MASTER_KEY" \
  -X DELETE

# Todo
- Exit and write error message to the log if any of parameters does not exist
