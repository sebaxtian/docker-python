# docker-python
Docker configuration for application that run with Python

## Build Container
###### See example.env file

docker build --build-arg PYTHON_ENV=production --build-arg DIR_APP=example-app --build-arg PORT_APP=1988 -t sebaxtian/docker-python:1.0.0 .

## Run Container
###### See example.env file

docker run --name docker-python --env-file $PWD/.env -v $PWD/src/example-app:/home/python/src -p 1988:1988 -d sebaxtian/docker-python:1.0.0

## Restart Container
docker restart docker-python

## See logs Container
docker logs docker-python

## Shell in Container
docker exec -it docker-python bash
OR
docker exec -it docker-python sh

## Erase Container
docker rm docker-python

## Erase Container Image
docker image rm sebaxtian/docker-python:1.0.0

## To test browse to http://localhost:1988/
