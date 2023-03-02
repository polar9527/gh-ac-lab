FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.e9cdkss.mongodb.net
ENV MONGODB_USERNAME polar9527
ENV MONGODB_PASSWORD ict2ldUPaOtN7DQg

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]