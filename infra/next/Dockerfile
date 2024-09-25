FROM node:18.17.1

WORKDIR /app

COPY ./front/package*.json .
RUN npm ci

# volumeしているのでcopyは不要かも
# COPY ./front/ .

CMD ["npm i && npm run dev"]
