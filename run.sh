#!/bin/sh

SERVER=rhebok
#siege -r 1000 -c 100 -b -q  http://localhost:3000/pi > ${SERVER}_pi.txt 2>&1
siege -r 10 -c 10 -b -q  http://localhost:3000/sleep  > performance_ruby_2_2_0/${SERVER}/sleep.txt 2>&1
siege -r 10 -c 10 -b -q  http://localhost:3000/pi     > performance_ruby_2_2_0/${SERVER}/pi.txt 2>&1
siege -r 10 -c 10 -b -q  http://localhost:3000/server > performance_ruby_2_2_0/${SERVER}/server.txt 2>&1
siege -r 10 -c 10 -b -q  http://localhost:3000/random > performance_ruby_2_2_0/${SERVER}/random.txt 2>&1
