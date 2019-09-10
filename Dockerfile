FROM node:10-alpine

WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . ./app

EXPOSE 3000

RUN npm install -g nodemon

CMD [ "nodemon", "-L", "index.js" ]