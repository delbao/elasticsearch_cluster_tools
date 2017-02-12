#!/bin/bash

if [ "$1" == "" ]; then
    echo "Missing slave nodes count parameter, example: ./launch.sh 3"
    exit 1
fi


echo "Restarting cluster ..."
sudo docker-compose down
sudo docker-compose up -d

echo ""
echo "Wait for Elasticsearch up ..."
./wait-for-it.sh localhost:9200 -s -t 0
echo "Wait for Kibana up..."
./wait-for-it.sh localhost:5601 -s -t 0
echo "Wait for Elasticsearch Head up ..."
./wait-for-it.sh localhost:9100 -s -t 0

echo ""
echo "Scale up to $1 nodes ..."
sudo docker-compose scale hrono-elasticsearch-slave=$1

echo ""
echo "Wait for Elasticsearch ..."
./wait-for-it.sh localhost:9200 -s -t 0

echo ""
echo "Cluster available:"
echo "- for HTTP at http://localhost:9200"
echo "- for clients at port 9300"

echo ""
echo "Kibana available:"
echo "http://localhost:5601/app/kibana"

echo ""
echo "Elasticsearch Head available:"
echo "http://localhost:9100/"