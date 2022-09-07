# pull official base image
FROM node:latest

# set working directory
WORKDIR /frontend

# install app dependencies
COPY ./*.json /frontend/
RUN npm update --force
RUN npm install
#RUN npm audit fix --force
RUN yarn add react-scripts
# add app
COPY . .
EXPOSE 3003
# start app
CMD ["npm", "start"]
