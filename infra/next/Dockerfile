FROM node:18.17.1

WORKDIR /app

COPY ./front/package*.json .
RUN npm install

COPY ./front/ .

# CMD ["npm", "run", "dev"]
