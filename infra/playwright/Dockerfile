# Use the Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# Set working directory
WORKDIR /playwright
    
COPY ./playwright/package*.json .

# 依存関係のインストール
RUN npm ci
