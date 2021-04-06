#Dockerfile to be created at new ./DataEng/ directory
#To get PostgreSQL db from the base base docker image
FROM postgres:latest
COPY . /DataEng
WORKDIR /DataEng
RUN chmod +x /DataEng/setup.sh