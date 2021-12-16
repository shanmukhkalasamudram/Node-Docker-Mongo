docker ps 
docker ps -a // All Contauners
docker images
docker run mongo
docker stop ID - if crashes
docker start ID - Get ID From Docker ps -a
docker run -p6000:6379 <NAME> - Port Binding

docker logs containerID/Name
docker run -d --name shan node -Own container
docker exec -it cid /bin/bash - Virtaul file system 


Node application 
docker pull mongo
docker pull mongo-express



docker network ls
docker network create mongo-network


Starting Mongo Container
docker run -p 27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo


Starting Mongoexpress Container
docker run -p 8081:8081 -d -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express

docker-compose -f mongo.yaml up -d //Run using Compose file
docker-compose -f mongo.yaml down -d // Down using Compose file

Create Own Image
docker build -t my-app:1.0 . 
docker run my-app:1.0


//Delete Image and Conatiner
docker rm <ContaienrID>
docker rmi <ImageID>


