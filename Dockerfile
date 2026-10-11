# Picks a base image to use for creation of Docker image
FROM node:16

# Sets working directory inside the container
WORKDIR /app

# Copying the dependencies and scripts etc. from package.json for better caching
COPY package.json .

# Installs the dependencies specified in package.json
RUN npm install

# Copies all the application files from local directory to current directory (/app as specified above)
COPY . .

# Documents which port the application will/should run on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]