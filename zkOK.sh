#!/usr/bin/env bash

# Test if the server is active,The server will respond with imok if it is running
# See https://zookeeper.apache.org/doc/r3.4.14/zookeeperAdmin.html
OK=$(echo ruok | nc 127.0.0.1 $1)
if [[ "$OK" == "imok" ]]; then
	exit 0
else
	exit 1
fi
