FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.suptvfn.mongodb.net
ENV MONGODB_USERNAME mic
ENV MONGODB_PASSWORD Pepere1968

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
