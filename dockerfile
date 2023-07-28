# Use Node.js version 14
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json into the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application files into the container
COPY . .

# Use a non-root user
# USER node

# Set an environment variable for the port
ENV PORT 8080

# Start the application using the environment variable for the port
CMD node index.js $PORT

# Expose the port
EXPOSE 8080
