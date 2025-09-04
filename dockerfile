# Use the official Nginx image
FROM nginx:stable-alpine

# Copy your custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your HTML files to the Nginx public directory
COPY html /usr/share/nginx/html

# Expose the port
EXPOSE 8080

# Command to start Nginx
CMD ["nginx", "-g", "daemon off;"]
