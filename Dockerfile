FROM node:lts-alpine

# Make the working directory
WORKDIR /code

# Copy files
COPY package.json /code/package.json
COPY package-lock.json /code/package-lock.json
COPY . .

# Install dependencies
RUN npm install

# Build
RUN npm run build

# Intall http-server
RUN npm install -g http-server

# Run
EXPOSE 8080
CMD [ "http-server", "dist" ]
