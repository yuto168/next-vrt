# Use the Playwright base image
FROM mcr.microsoft.com/playwright:v1.43.0-jammy

# Set working directory
WORKDIR /playwright

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# Copy the rest of the project files
COPY ./playwright .

# 依存関係のインストール
RUN npm install

# Run Playwright tests or other commands as necessary
CMD ["npx", "playwright", "test"]