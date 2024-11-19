docker network create --driver bridge mongonetwork

# Kalo dipublish ke luar maka portnya ga boleh sama
# Ini karena diakses secara lokal maka portnya ga didefine

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=ilham --env MONGO_INITDB_ROOT_PASSWORD=ilham mongo:latest

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://ilham:ilham@mongodb:27017/" mongo-express:latest

#  mongodb://ilham:ilham@mongodb:27017/ === (host)://username:password@(nama container):port container
docker container start mongodb
docker container start mongodbexpress

# Menghapus container dari network
docker network disconnect mongonetwork mongodb
# Kalo kita hapus mongodb nanti di mongoexpress yang 8081 dia bakal load terus karena mongodbnya udah ga keconnect

# connect ulang
docker network connect mongonetwork mongodb