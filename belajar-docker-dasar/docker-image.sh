# Untuk melihat daftar image
docker image ls

# Download docker image (contohnya redis)
docker image pull redis:latest

# Menghapus docker image
docker image rm redis:latest

# Untuk melihat semua container, baik yang sedang berjalan atau tidak di Docker Daemon, kita bisa gunakan perintah
docker container ls -a

# Sedangkan jika kita ingin melihat container yang sedang berjalan saja, kita bisa gunakan perintah :
docker container ls

# Untuk membuat container, kita bisa gunakan perintah :
docker container create --name contohredis redis:latest

# Untuk menjalankan container yang sudah kita buat, kita bisa gunakan perintah :
docker container start contohredis

# Cek lagi container yang aktif maka "contohredis" akan berjalan
docker container ls

# Buat yang kedua lalu jalankan
docker container create --name contohredis2 redis:latest
docker container start contohredis2
docker container ls

# Untuk menghentikan jalannya container
docker container stop contohredis
docker container stop contohredis2
docker container ls
docker container ls -a

# Hapus container yang tidak berjalan
docker container rm contohredis
docker container rm contohredis2
docker container ls -a

# Container log (ada di file log)

