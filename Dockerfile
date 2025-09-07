# Use Red Hat's UBI image with Apache HTTPD
FROM registry.access.redhat.com/ubi8/httpd-24

# Set working directory
WORKDIR /var/www/html

# Copy your HTML files into Apache's document root
COPY index.html /var/www/html/

# Fix permissions for OpenShift's non-root user
RUN chown -R 1001:0 /var/www/html && chmod -R g+rw /var/www/html

# Change Apache to listen on port 8080 (non-privileged)
RUN sed -i 's/Listen 80/Listen 8080/' /etc/httpd/conf/httpd.conf

# Expose port 8080
EXPOSE 8080

# Run Apache in foreground
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
