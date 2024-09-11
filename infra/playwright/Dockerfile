# Use the Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# Set working directory
WORKDIR /playwright

# Install necessary dependencies
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/*
    
COPY ./playwright/package*.json .

# 依存関係のインストール
RUN npm ci

COPY ./playwright .

RUN chmod +x wait.sh

# Run Playwright tests or other commands as necessary
CMD ["sh", "-c", "wait.sh localhost:3000 && npm test"]