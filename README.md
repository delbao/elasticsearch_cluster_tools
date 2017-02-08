# Prerequisite
Docker [how-to install](https://docs.docker.com/engine/installation/)  
Docker Compose [how-to install](https://docs.docker.com/compose/install/)

# Run using script
Make launch script executable:
```
sudo chmod u+x ./launch.sh
```

Run:
```
./launch.sh 3
```
The digit at the end symbolize how many slave nodes you want in cluster.   
In the command below you use 3 slave nodes.

# Run using Docker Compose
### Run
```
docker-compose up -d
```

To interact with the cluster, find bind port:
```
port=$(docker-compose port hrono-elasticsearch-master 9200 | cut -d':' -f 2)
echo $port
```

### Down
```
docker-compose down -v
```

### Scale
```
docker-compose scale hrono-elasticsearch-slave=3
docker-compose scale hrono-elasticsearch-slave=6
docker-compose scale hrono-elasticsearch-slave=9
```

# URL's
Cluster state: `http://localhost:9200/_cluster/state?pretty`  
Kibana: `http://localhost:5601/app/kibana`  
elasticsearch-head: `http://localhost:9100/`