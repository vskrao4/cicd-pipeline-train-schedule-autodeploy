FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY /usr/bin/kubectl /usr/bin/
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
