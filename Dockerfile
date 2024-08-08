# Use the official Node.js image from the Docker Hub
FROM node:14

# Create and change to the app directory
WORKDIR /app

# Copy the package.json and package-lock.json files
#COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 8082

# Start the app
CMD ["node", "index.js"]
