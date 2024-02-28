FROM node:20

ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable
COPY package.json /usr/app/ 
COPY pnpm-lock.yaml /usr/app/ 
# Copy package.json and package-lock.json to /usr/app

COPY src /usr/app/
# Copy all files in src to /usr/app

WORKDIR /usr/app
# Set the working directory to /usr/app

RUN pnpm install

CMD ["node", "index.js"]

