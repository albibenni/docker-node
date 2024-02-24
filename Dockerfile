FROM node:21

COPY package*.json /usr/app/

COPY src /usr/app/

WORKDIR /usr/app

RUN npm install

CMD ["npm", "index.js"]

