# Use Nginx as the base image
FROM nginx:alpine

# Install git, clone the repository, copy the specific folder, remove the rest

RUN apk add --no-cache git && \
RUN git clone https://github.com/WSU-kduncan/f23cicd-KingShampoo.git /tmp/repo && \
    cp -r /tmp/repo/website/* . && \
    rm -rf /tmp/repo && \

# Expose port 80
EXPOSE 80

# Start Nginx and keep it running
CMD ["nginx", "-g", "daemon off;"]
