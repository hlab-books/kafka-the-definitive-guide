#!/bin/bash
cd /opt/bitnami/kafka/bin
./kafka-topics.sh -bootstrap-server localhost:9092 --create --replication-factor 1 --partitions 1 --topic test