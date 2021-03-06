FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/

RUN npm install
RUN npm install pm2 -g

COPY . /usr/src/app

EXPOSE 3000

CMD ["pm2-docker", "server.js"]

