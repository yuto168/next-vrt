# Use the Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# Set working directory
WORKDIR /playwright
    
COPY ./playwright/package*.json .

# 依存関係のインストール
RUN npm ci

# 実行時にやるのでワンちゃん不要よね
# COPY ./playwright/wait.sh /wait.sh
# RUN chmod +x /wait.sh

# RUNでやった権限付与がなぜリセットされるのか
CMD ["bash", "-c", "chmod +x wait.sh && wait.sh next:3000"]
