# build stage
FROM node:lts-alpine as build-stage
# Make the working directory
WORKDIR /app
# Copy files
COPY package*.json ./
# Install dependencies
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
