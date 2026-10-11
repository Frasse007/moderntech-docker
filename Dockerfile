# Picks a base image to use
FROM node:16

# Sets working directory inside the container
WORKDIR /app

# Copying the dependencies and scripts etc. from package.json
COPY package.json .

# Installs the dependencies specified in package.json
RUN npm install

# Copies all the application files
COPY . .

# Exposes the port for application to run on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]