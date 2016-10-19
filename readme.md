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

# Requests for a month
1 request * 2 servers / every 1 minute * 60 minutes * 24 hours * 30 days = 86400
2 requests * 2 servers / every 2 minutes * 60 minutes * 24 hours * 30 days = 43200
2 requests * 2 servers / every 2 minutes * 60 minutes * 24 hours * 30 days = 43200

# Delete all data from KeenIO
curl "https://api.keen.io/3.0/projects/PROJECT_ID/events/PROJECT_NAME" \
  -H "Authorization: MASTER_KEY" \
  -X DELETE

# Todo
- Exit and write error message to the log if any of parameters does not exist
