# Use the official Nginx image with Alpine Linux
FROM nginx:alpine

# Copy files and directories into the Nginx HTML directory
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./assets /usr/share/nginx/html/assets
COPY ./website-demo-image /usr/share/nginx/html/website-demo-image
COPY ./index.txt /usr/share/nginx/html/index.txt
COPY ./README.md /usr/share/nginx/html/README.md

# Expose port 80 to allow external access
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
