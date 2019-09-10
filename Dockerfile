FROM node:10-alpine

WORKDIR /app

RUN npm install -g nodemon

COPY package.json /app/package.json
RUN npm install

COPY . /app

EXPOSE 3000
CMD [ "nodemon", "-L", "index.js" ]