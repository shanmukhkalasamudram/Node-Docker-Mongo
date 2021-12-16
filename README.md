
### With Docker

#### To start the application

Create docker network-  // docker network create mongo-network 

start mongodb 
// docker run -d -p 27017:27017 -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo    

start mongo-express
    
// docker run -d -p 8081:8081 -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express   

 http://localhost:8081
    node server.js
    http://localhost:3000



### With Docker Compose

    docker-compose -f docker-compose.yaml up
    npm install
    node server.js
    http://localhost:3000



### To build a docker image from the application

    docker build -t my-app:1.0 .       
    
The dot "." at the end of the command denotes location of the Dockerfile.





