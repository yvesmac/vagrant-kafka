#!/bin/bash
#
# Create topic

sudo docker exec broker \
kafka-topics --bootstrap-server broker:9092 \
             --create \
             --topic quickstart

