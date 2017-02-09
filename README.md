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

# Deploy in AWS `t2.medium`
Set `Virtual memory` like described here [https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html](https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html)
```
sudo sysctl -w vm.max_map_count=262144
```

Copy `docker-compose.yml` file in that instance.

In the directory with this file execute command:
```
sudo docker-compose up -d
```

Then you can try links described below to access cluster.