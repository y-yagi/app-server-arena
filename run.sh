#!/bin/sh

# passenger / puma / raptor(passenger 5) / rhebok / thin /unicorn
SERVER=puma
THREAD=10
CONNECTION=100
DURATION=3s

rm -rf result/${SERVER}
mkdir result/${SERVER}

wrk -t ${THREAD} -c ${CONNECTION} -d ${DURATION} http://localhost:3000/sleep  > result/${SERVER}/sleep.txt 2>&1
wrk -t ${THREAD} -c ${CONNECTION} -d ${DURATION} http://localhost:3000/pi     > result/${SERVER}/pi.txt 2>&1
wrk -t ${THREAD} -c ${CONNECTION} -d ${DURATION} http://localhost:3000/server > result/${SERVER}/server.txt 2>&1
wrk -t ${THREAD} -c ${CONNECTION} -d ${DURATION} http://localhost:3000/random > result/${SERVER}/random.txt 2>&1
wrk -t ${THREAD} -c ${CONNECTION} -d ${DURATION} http://localhost:3000/active_record > result/${SERVER}/active_record.txt 2>&1
