#!/bin/bash

set -e
cd $(dirname $0)

topics=("info" "errors")


for i in 1 2 3 4 5; do
  echo "attempt: $i" &&
    for topic in ${topics[@]}; do
      kafka-topics.sh --create --topic $topic --partitions 2 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9093
    done && break || sleep 1
done
#
#for i in 1 2 3 4 5; do
#  echo "attempt: $i" &&
#      echo $topics | xargs -I % -L1 kafka-topics.sh --create --topic % --partitions 2 --replication-factor 1 --if-not-exists --bootstrap-server kafka:9093 && break || sleep 1
#done

#
#
#for i in 1 2 3 4 5; do
#  echo "attempt: $i" &&
#    for topic in ${topics[@]}; do
#      kafka-topics.sh --bootstrap-server kafka:9093 --if-exists --alter --topic $topic --partitions 2
#    done && break || sleep 10
#done
