FROM node:20

COPY package*.json /usr/app/ 
# Copy package.json and package-lock.json to /usr/app

COPY src /usr/app/
# Copy all files in src to /usr/app

WORKDIR /usr/app
# Set the working directory to /usr/app

RUN pnpm install

CMD ["node", "index.js"]

