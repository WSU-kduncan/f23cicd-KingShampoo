# Use Nginx as the base image
FROM nginx:alpine

# Set the working directory to Nginx's serve directory
WORKDIR /usr/share/nginx/html

# Install git, clone the repository, copy the specific folder, remove the rest

RUN apk add --no-cache git && \
    git clone https://github.com/WSU-kduncan/f23cicd-KingShampoo.git /tmp/repo && \
    cp -r /tmp/repo/website/* . && \
    rm -rf /tmp/repo && \
    apk del git

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running
CMD ["nginx", "-g", "daemon off;"]
