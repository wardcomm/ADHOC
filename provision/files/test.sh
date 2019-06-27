#!/bin/bash
# Check that status is 200 OK
status_code=$(ssh -c "curl -k -s -o /dev/null -w \"%{http_code}\" https://127.0.0.1/" 2> /dev/null)

if [[ $status_code == "200" ]]
then
    echo "Pass: status code is ${status_code}";
else
    echo "Fail: status code is ${status_code}";
fi