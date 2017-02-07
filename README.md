### Run
```
docker-compose up -d
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

### URL's
Cluster state: `http://localhost:9200/_cluster/state?pretty`  
Kibana: `http://localhost:5601/app/kibana`  
elasticsearch-head: `http://localhost:9100/`