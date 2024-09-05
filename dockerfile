FROM node:10

WORKDIR /usr/node

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 4042

CMD [ "node", "server.js" ]

