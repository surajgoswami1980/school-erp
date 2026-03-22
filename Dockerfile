# Use Node image
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all code
COPY . .

# Build app
RUN npm run build

# Expose port
EXPOSE 3000

# Start app
CMD ["node", "dist/main.js"]