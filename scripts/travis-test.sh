#!/usr/bin/env bash

out=$(curl -i http://localhost | grep "HTTP/1.1 200 OK")

# we should check out == hello
if [ $? == 0 ];then
  echo "GOOD: test pass"
else
  echo "BAD: test fail"
  exit 1
fi