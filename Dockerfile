# Use a Node.js base image
FROM node:lts

# Set the working directory
WORKDIR /nodetester

# Copy package.json and package-lock.json (if you have it)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]