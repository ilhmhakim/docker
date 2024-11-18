docker volume create mongodata

docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ilham --env MONGO_INITDB_ROOT_PASSWORD=ilham mongo:latest

docker container stop mongovolume

docker container rm mongovolume

# Lalu create lagi dan dicek apakah datanya masih ada di mongovolume
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ilham --env MONGO_INITDB_ROOT_PASSWORD=ilham mongo:latest
docker container stop mongovolume

# Backup
# Mount yang pertama dia buat bind ke hostnya, yang kedua dia buat bind volumenya (yang mau kita backup)
docker container create --name nginxbackup --mount "type=bind,source=D:\Docker\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest #Akan diambil /data di dalam containernya
docker container start nginxbackup
docker container exec -i -t nginxbackup /bin/bash
tar cvf /backup/backup.tar.gz /data
docker container stop nginxbackup
docker container rm nginxbackup
docker container start mongovolume

# Cara backup langsung
# Menggunakan ubuntu karena sekali jalan langsung berhenti
container image pull ubuntu:lastest
# Distop dulu jadi ga ada write ketika backup
docker container stop mongovolume
docker container run --rm --name ubuntubackup --mount "type=bind,source=D:\Docker\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data
docker container start mongovolume
