# the base image from which the app is built upon
#FROM node:16.19-alpine3.16
FROM node:16.19
# Runs the mkdir command to create /usr/src/app inside docker container
RUN mkdir -p /usr/src/app  
# Sets the work directory to /usr/src/app 
WORKDIR /usr/src/app  
# Copies the contents of the current directory into the working directory inside the # docker container
COPY . /usr/src/app
# Exposes ports outside the docker container
EXPOSE 4000
EXPOSE 3000

# prep env var for db connection string
ARG DATABASE_URL_NEWS

# Set up backend server
WORKDIR /usr/src/app/server
RUN yarn install

# Set up React app
WORKDIR /usr/src/app
RUN yarn install

# Provides the command required to run the application
CMD ["./wrapper_script.sh"]  
