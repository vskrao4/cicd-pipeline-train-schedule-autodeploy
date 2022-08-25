FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Install kubectl from Docker Hub as required for Kubernetes deployment
COPY --from=bitnami/kubectl .
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
