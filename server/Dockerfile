FROM node:14
WORKDIR /usr/src/app
COPY ../package*.json ./
RUN npm ci
COPY ../src/* .
CMD ["npm", "run", "start-docker"]