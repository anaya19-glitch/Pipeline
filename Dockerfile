# Use the lightweight Nginx Alpine image
FROM nginx:latest

# Remove the default Nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy your index.html into the Nginx server directory
# Make sure your file is named 'index.html'
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]
