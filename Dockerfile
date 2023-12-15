# Use Nginx as the base image
FROM nginx:alpine

# Install git
RUN apk add --no-cache git

# Clone the content of your GitHub repository into the /tmp/repo directory
RUN git clone https://github.com/WSU-kduncan/f23cicd-KingShampoo.git /tmp/repo

# Copy the contents from your repository's 'website' folder to the Nginx serve directory
RUN cp -r /tmp/repo/website/* /usr/share/nginx/html/

# Clean up by removing the cloned repository
RUN rm -rf /tmp/repo

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

