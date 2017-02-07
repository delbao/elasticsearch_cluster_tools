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

### Cluster state
[http://localhost:9200/_cluster/state?pretty](http://localhost:9200/_cluster/state?pretty)
