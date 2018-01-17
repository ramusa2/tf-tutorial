IMG="tf"
docker build -t $IMG .
docker run -p 127.0.0.1:8888:8888 --name $IMG -t $IMG
