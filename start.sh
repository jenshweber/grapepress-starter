#!/bin/sh

# start the container stack
# (assumes the caller has permission to do this)
docker-compose up -d

# wait for the service to be ready
while ! curl --fail --silent --head http://0.0.0.0:8999/worksheet.html; do
  sleep 1
done

# open the browser window
open http://0.0.0.0:8999/worksheet.html