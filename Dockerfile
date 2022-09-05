# pull official base image
FROM node:latest

# set working directory
WORKDIR /usr/src/app 

# install app dependencies
COPY /package.json ./
COPY /package-lock.json ./
RUN npm install 

# add app
COPY . ./

# start app
CMD ["npm", "index.js"]

