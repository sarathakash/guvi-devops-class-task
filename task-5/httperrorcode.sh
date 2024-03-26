#!/bin/bash

read -p "Enter the website:" URL

http_code=$(curl --write-out  %{http_code} --silent --output /dev/null $URL) 
if [ $http_code -eq 200 ]
then
 echo $http_code
 echo "success"
else
echo "Connection is failure"
fi
