#   docker-mariadb

This is the source of aabbate/mariadb docker container. 
The mariadb container is built on top of Alpine Linux. 

## How to run the container after building it

```
$ docker run -d -p 3306:3306 --name mariadb <your local build>
```

## If you want to try the container already available in DockerHub

```
$ docker run -d -p 3306:3306 --name mariadb aabbate/mariadb 
```

* DockerHub Project page: <https://hub.docker.com/r/aabbate/mariadb/>


