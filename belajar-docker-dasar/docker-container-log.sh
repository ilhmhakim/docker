# Buat lagi dulu container redisnya
docker container create --name contohredis redis:latest
docker container start contohredis
# Baru jalanan log nya
# docker container logs contohredis
# Agar log menunggu sampe ada log baru
docker container logs -f contohredis
# Cocok untuk aplikasi yang dibungkus dengan container dan menggunakan logging
# Jadi kita bisa lihat lognya lewat log container