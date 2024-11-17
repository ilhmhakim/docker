docker image pull nginx:latest

# Create dulu Containernya dan jangan lupa ngelakuin forwarding
# Si Nginx kalo di Docker itu ada di port 80, jadi kita juga harus tau port aplikasinya
docker container create --name contohnginx --publish 8081:80 nginx:latest
docker container ls
docker container start contohnginx

