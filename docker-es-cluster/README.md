# elastic ES clusters using docker-compose

## prerequisite
```
brew install docker
docker-machine create -d virtualbox $name 
docker-machine start $name
eval $(docker-machine env dev)
```

## create the cluster
```
docker-compose up -d
```

To interact with the cluster, find binded port
```
port=$(docker-compose port es 9200 | cut -d':' -f 2)
echo $port
```

If you are running docker on OSX, note that the host is really the VirtualBox instance that was installed with docker-machine
```
docker-machine ip
curl http://<VM_IP>:$port
```

data container just mount the /data volume and exit immediately

## stop the cluster
```
docker-compose down
```

### scale up/down
```
docker-compose scale es=2
docker-compose scale es=10
docker-compose scale es=4
```
