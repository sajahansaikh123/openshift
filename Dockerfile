# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom configuration file (optional)
# Make sure you have nginx.conf in the same directory as this Dockerfile
#COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files (optional)
# For example, if you have an 'html' folder with index.html
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]

