FROM node:10-alpine

WORKDIR /usr/node/app

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]

FROM node:10

WORKDIR /app

COPY package.json package.json

RUN npm install

COPY . .

EXPOSE 3000

RUN npm install -g nodemon

CMD [ "nodemon", "-L", "index.js" ]