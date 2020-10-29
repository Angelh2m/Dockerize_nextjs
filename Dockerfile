
FROM node:12.15.0-alpine as build-step

WORKDIR /app
COPY . .
EXPOSE 3000
RUN npm i 
CMD node -v && npm run dev

# CREATE THE DOCKER IMAGE
# docker build -t nextjs . 

# VIEW DOCKER IMAGES
# docker image ls

# This command only shows running containers 
# docker ps -a

# THIS COMMAND STOPS THE RUNNING CONTAINER

#  docker stop 43bd45cff18f<CONTAINER_ID>

# RUN THE CONTAINER <IMAGE/REPOSITORY>
# docker run -p 0.0.0.0:5000:3000 nextjs


# docker build -t client . && docker run --name CLIENT_CONTAINER -p 0.0.0.0:5000:3000 client