# docker container exec -i -t contohredis /bin/bash (ERROR)
# Hal ini dikarenakan ketika mencoba menjalankan shell bash, tetapi lokasi bash yang diberikan tidak ditemukan. Hal ini sering terjadi jika Anda menggunakan lingkungan Windows dan tidak memiliki bash yang sesuai di dalam container atau host.
# Bisa juga gunain SH
# Pastikan containernya sudah dirun
docker container exec -i -t contohredis sh