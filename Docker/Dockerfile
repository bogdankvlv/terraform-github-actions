# Use the official lightweight Nginx image
FROM nginx:alpine

# Remove the default Nginx web content
RUN rm -rf /usr/share/nginx/html/*

# Copy your app’s files into Nginx's web directory
COPY . /usr/share/nginx/html

# Expose port 80 so the container can be reached
EXPOSE 80

# Nginx will start automatically using the image's default CMD
