# Uses a lightweight Nginx image.
FROM nginx:alpine

# Sets the working directory inside the container.
WORKDIR /usr/share/nginx/html

# Copies all the website files into the container.
COPY . .

# Exposes the default Nginx port.
EXPOSE 80

# Starts Nginx server.
CMD ["nginx", "-g", "daemon off;"]