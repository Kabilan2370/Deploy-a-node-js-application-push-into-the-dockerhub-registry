FROM node:9

WORKDIR /usr/node

COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 4042

CMD [ "node", "server.js" ]

