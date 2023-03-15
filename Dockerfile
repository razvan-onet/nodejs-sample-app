# Set the base image to Node.js
FROM node:17-alpine

# Create app directory
WORKDIR /app

# Copy package.json and package-lock.json first to cache the layers for better build time in case dependencies don't change
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port
EXPOSE 3000

# Set the user to a non-root user (optional but recommended for security)
USER node

# Start the server when the container starts
ENTRYPOINT [ "node", "index.js" ]
