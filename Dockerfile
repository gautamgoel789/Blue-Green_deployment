# Use nginx base image
FROM nginx:alpine

# Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to nginx web directory
COPY index.html /usr/share/nginx/html/index.html
CMD ["sh", "-c", "echo Crashing... && exit 1"]

