FROM node:18.17.1

WORKDIR /app

# package.jsonをコピーしてnpm installを実行することでimage側とhost側のnode_modulesを同期させる
COPY ./front/package*.json .  
RUN npm ci
