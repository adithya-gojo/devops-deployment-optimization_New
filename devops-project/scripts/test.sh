#!/bin/bash
STATUS=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000)
if [ "$STATUS" -eq 200 ]; then
  echo "App is running fine!"
else
  echo "App failed health check!"
  exit 1
fi
