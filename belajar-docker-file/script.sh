# FROM Instruction
docker build -t kafta/from from

docker image ls

# RUN Instruction
docker build -t kafta/run run

docker build -t kafta/run run --progress=plain --no-cache

# cmd Instruction
docker build -t kafta/command command

docker image inspect kafta/command

docker container create --name command kafta/command

docker container start command

docker container logs command

# LABEL Instruction
docker build -t kafta/label label

docker image inspect kafta/label

# ADD Instruction
docker build -t kafta/add add
docker container create --name add kafta/add
docker container start add
docker container logs add

# COPY Instruction
docker build -t kafta/copy copy
docker container create --name copy kafta/copy
docker container start copy
docker container logs copy

# .dockerignore
docker build -t kafta/ignore ignore
docker container create --name ignore kafta/ignore
docker container start ignore
docker container logs ignore

# EXPOSE Instruction
docker build -t kafta/expose expose
docker image inspect kafta/expose
docker container create --name expose -p 8081:8080 kafta/expose
docker container start expose
docker container logs expose

# ENV Instruction
docker build -t kafta/env env
docker image inspect kafta/env
docker container create --name env --env APP_PORT=9090 -p 9090:9090 kafta/env
docker container start env
docker container logs env
docker container stop env