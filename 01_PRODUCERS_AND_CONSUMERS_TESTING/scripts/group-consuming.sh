#!/bin/bash
echo "Producing messages to Kafka..."
cd /opt/bitnami/kafka/bin
./kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --group grouping