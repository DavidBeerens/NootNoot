# Use a base image
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the html directory contents to the container
COPY html /usr/share/nginx/html

# Create the buildtime.txt file with the build time
RUN date > /usr/share/nginx/html/buildtime.txt

# Expose port 81
EXPOSE 81

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
