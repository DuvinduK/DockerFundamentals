FROM node:22-alpine3.19 

ENV MONGO_INITDB_ROOT_USERNAME=admin \
    MONGO_INITDB_ROOT_PASSWORD=password


RUN mkdir -p /home/app

COPY ./app /home/app
    
# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app
    
# will execute npm install in /home/app because of WORKDIR
RUN npm install
    
# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]
    



