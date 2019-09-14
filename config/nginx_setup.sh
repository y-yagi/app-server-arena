#!/bin/sh

sudo unitd --control 127.0.0.1:8080
curl -X PUT --data-binary '{ "listeners": { "*:3000": { "pass": "applications/ruby_app" } }, "applications": { "ruby_app": { "type": "ruby", "working_directory": "/home/yaginuma/program/ruby/app-server-arena", "script": "config.ru" }  } }' http://127.0.0.1:8080/config
