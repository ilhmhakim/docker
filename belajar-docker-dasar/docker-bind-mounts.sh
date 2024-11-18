docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=D:\Docker\belajar-docker-dasar\mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ilham --env MONGO_INITDB_ROOT_PASSWORD=ilham mongo:latest

docker container start mongodata
