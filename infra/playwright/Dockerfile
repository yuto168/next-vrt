# Use the Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# Set working directory
WORKDIR /playwright
    
COPY ./playwright/package*.json .

# 依存関係のインストール
RUN npm ci

COPY ./playwright .
RUN ls -l

COPY ./playwright/wait.sh /wait.sh
RUN chmod +x wait.sh

RUN ls -l


# RUNでやった権限付与がなぜリセットされるのか
CMD ["sh", "-c", "chmod +x /wait.sh && /wait.sh localhost:3000 && npm i && npm run vrt"]
# CMD ["/wait.sh", "localhost:3000", "&&", "npm", "test"]
# Run Playwright tests or other commands as necessary
# CMD ["sh", "-c","ls -l && wait.sh localhost:3000 && npm test"]