# Use the official Apache HTTPD base image
FROM httpd

# Copy your index.html or entire site into Apache's default web directory
COPY index.html /usr/local/apache2/htdocs/

# Optional: If you have other static assets (CSS, JS, images), copy them too
# COPY assets/ /usr/local/apache2/htdocs/assets/

# Expose port 80 for HTTP traffic
EXPOSE 80

