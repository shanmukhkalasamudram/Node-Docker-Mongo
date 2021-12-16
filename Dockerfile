FROM node   
#Based on other image and install that image

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

RUN mkdir -p /home/app
#Container environment


COPY ./app /home/app

# # set default dir so that next commands executes in /home/app dir
# WORKDIR /home/app

# # will execute npm install in /home/app because of WORKDIR
# RUN npm install

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "/home/app/server.js"]

