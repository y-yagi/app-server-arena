#!/bin/sh

# passenger / puma / raptor(passenger 5) / rhebok / thin /unicorn
SERVER=unicorn
REQUEST=10
CLIENT=10

siege -r ${REQUEST} -c ${CLIENT} -b -q  http://localhost:3000/sleep  > performance_ruby_2_2_0/${SERVER}/sleep.txt 2>&1
siege -r ${REQUEST} -c ${CLIENT} -b -q  http://localhost:3000/pi     > performance_ruby_2_2_0/${SERVER}/pi.txt 2>&1
siege -r ${REQUEST} -c ${CLIENT} -b -q  http://localhost:3000/server > performance_ruby_2_2_0/${SERVER}/server.txt 2>&1
siege -r ${REQUEST} -c ${CLIENT} -b -q  http://localhost:3000/random > performance_ruby_2_2_0/${SERVER}/random.txt 2>&1
