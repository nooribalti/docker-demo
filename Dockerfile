# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY . /app

# Install application dependencies
RUN npm install

# Expose the port your app will run on
EXPOSE 3000

ENV NAME docker-demo

# Command to run your application
CMD ["node", "index.js"]
