FROM node:20.15.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .
COPY env_vars.txt .env

EXPOSE 5000

CMD ["node", "server.js"]
