#MAINTAINER Allen Day <allenday@google.com>
FROM tensorflow/tensorflow
FROM gcr.io/tensorflow/tensorflow:latest

###
### install more system packages, e.g.
###
RUN apt-get update
RUN apt-get install -y gcc

###
### install more python libs, e.g.
###
RUN pip install scikit-learn

###
### this copies in files from current directory to /notebooks 
### to the running container, so that you can access them
### container
###
RUN rm -rf /notebooks/*
ADD notebooks/*.ipynb /notebooks/
 
###
### start up the server
###
WORKDIR /notebooks
CMD ["/run_jupyter.sh"]

###
### use it like this.  we'll call the image and container "tf"
###
#docker build -t tf .
#docker run -p 127.0.0.1:8888:8888 --name tf -t tf
#docker stop tf
#docker rm tf

###
### I like to put these all on one line so I can iterate on
### edits to my Dockerfile
###
#docker stop tf; docker rm tf; docker build -t tf .; docker run -p 127.0.0.1:8888:8888 --name tf -t tf
