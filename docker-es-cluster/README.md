# elastic ES clusters using docker-compose

## prerequisite
```
brew install docker
docker-machine create -d virtualbox $name 
```

## create the cluster
```
docker-compose up -d
```
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
