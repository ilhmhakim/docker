# Memorynya 100 mega, cpunya yg dipake 0.5
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8082:80 nginx:latest
docker container start smallnginx
docker container stats