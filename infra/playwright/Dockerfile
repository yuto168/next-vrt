FROM mcr.microsoft.com/playwright:v1.43.0-jammy

WORKDIR /playwright

RUN apt-get update && apt-get install -y \
    curl \
    git 

RUN npm install -g npm && npm init playwright@latest -y
