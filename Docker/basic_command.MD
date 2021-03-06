- [List of images](#list-of-images)
- [Run container (Alpine)](#run-container-alpine)
- [Run container with interactive mode (Alpine with shell)](#run-container-with-interactive-mode-alpine-with-shell)
- [List container](#list-container)
- [List all container](#list-all-container)
- [List only names of containers](#list-only-names-of-containers)
- [Remove all containers](#remove-all-containers)
- [Remove all _stopped_ containers](#remove-all-stopped-containers)
- [Port mapping](#port-mapping)
- [Mapping local folder to container](#mapping-local-folder-to-container)
- [Automatically remove the container when it exits](#automatically-remove-the-container-when-it-exits)
- [Create network and attach container](#create-network-and-attach-container)

### List of images

```shell
docker images
```

### Run container (Alpine)

```shell
docker container run alpine
```

### Run container with interactive mode (Alpine with shell)

```shell
docker container run -it alpine sh
```

### List container

```shell
docker container ls
```

### List all container

```shell
docker container ls -a
```

### List only names of containers

```shell
docker container ls --format '{{.Names}}'
```

### Remove all containers

```shell
docker container rm $(docker container ls -aq)
```

### Remove all _stopped_ containers

```shell
docker container prune
```

### Port mapping

```shell
docker container run -p 8080:80 nginx
```

### Mapping local folder to container

```shell
docker run --name some-nginx -v /some/content:/usr/share/nginx/html:ro -d nginx
```

### Automatically remove the container when it exits

```shell
docker container run --rm --name ContainerAlias alpine
```
### Create network and attach container

```shell
docker network create msbang
docker container run --rm -it --name ContainerName --network msbang alpine sh
```