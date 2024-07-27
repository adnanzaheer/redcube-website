# Use the official WordPress image as a base
FROM wordpress:latest

# Install any additional packages or dependencies
# For example, if you need to install the `git` package
RUN apt-get update && apt-get install -y git

# Copy custom themes, plugins, or configuration files into the container
# Example: COPY custom-theme /var/www/html/wp-content/themes/custom-theme
# Example: COPY custom-plugin /var/www/html/wp-content/plugins/custom-plugin

# Expose port 80
EXPOSE 80

# Set environment variables if needed
# ENV WORDPRESS_DB_HOST=db:3306
# ENV WORDPRESS_DB_USER=exampleuser
# ENV WORDPRESS_DB_PASSWORD=examplepass
# ENV WORDPRESS_DB_NAME=exampledb

# Start WordPress
CMD ["apache2-foreground"]

