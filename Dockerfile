FROM node:18

# Create app directory -> cd
WORKDIR /usr/src/app

# Copy package.json into the container at /usr/src/app
COPY package*.json ./

# Install dependencies in the container
RUN npm install 

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Expose port 3000
EXPOSE 3000

# Execute the command node server.js
CMD ["node", "server.js"]