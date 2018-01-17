IMG="tf"
docker stop $IMG; docker rm $IMG; docker build -t $IMG .; docker run -p 127.0.0.1:8888:8888 --name $IMG -t $IMG
