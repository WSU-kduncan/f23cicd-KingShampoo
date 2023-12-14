# README-CI

## CI Project Overview

### Purpose of the Project
This project is designed to containerize a web application using Docker. The primary goal is to create a consistent, portable, and scalable environment for the application, ensuring that it runs the same way on any machine. This process exemplifies the principles of DevOps and continuous integration (CI), facilitating easier development, testing, and deployment.

### Why This Project
Containerization is a key aspect of modern software development practices. It allows developers to package applications with all their dependencies, ensuring that they work seamlessly in any environment. This project provides hands-on experience with these concepts, enhancing the reliability and efficiency of the development process.

### Tools Used
- **Docker**: Used for creating a containerized environment for the web application.
- **GitHub**: For version control and storing the project's source code, Dockerfile, and documentation.
- **Nginx/Apache**: Web servers used within the Docker container to serve the web application.
- **Lucidchart**: Utilized for designing and visualizing the architecture and workflow of the CI/CD pipeline, aiding in planning and communication of the project structure.


## Run Project Locally

### Installing Docker
1. **Windows Users with WSL2**:
   - Install Docker Desktop for Windows. Make sure to enable WSL2 support.
   - Follow the instructions on the [Docker Desktop WSL 2 backend](https://docs.docker.com/desktop/windows/wsl/) documentation.

2. **Linux Users**:
   - Install Docker using the official Docker installation guide for [Linux](https://docs.docker.com/engine/install/).

### Building an Image from the Dockerfile
1. Clone the repository to your local machine.
2. Navigate to the directory containing the `Dockerfile`.
3. Run the following command to build your Docker image:`docker build -t your-image-name .`
4. Replace `your-image-name` with a suitable name for your image.

### Running the Container
1. After the image is built, run it as a container with the command: `docker run -d -p 80:80 your-image-name`

This command runs the container in detached mode and maps port 80 of the container to port 80 on your host machine.

### Viewing the Project in a Web Browser
1. Open your web browser.
2. Navigate to `http://localhost` (or the IP address of your Docker host if different).
3. You should now see your web application running from the Docker container.

## DockerHub Repository Creation and Management

### Creating a Public Repository in DockerHub
1. Log in to your DockerHub account.
2. Navigate to the 'Repositories' tab.
3. Click on 'Create Repository'.
4. Choose a suitable name for your repository and set its visibility to 'Public'.
5. Fill in other details as required and click on 'Create'.

### Authenticating with DockerHub via CLI
To push images to DockerHub, you first need to authenticate using the Docker CLI:
1. Open your terminal.
2. Run the following command:`docker login --username your-dockerhub-username`
3. When prompted, enter your DockerHub password. You can also use a token instead of a password for better security.

### Pushing a Container Image to DockerHub
After building your image and authenticating with DockerHub, you can push the image:
1. Tag your image with your DockerHub username and repository: `docker tag your-local-image-name your-dockerhub-username/your-repo-name`
2. Push the image to DockerHub: `docker push your-dockerhub-username/your-repo-name`


### Link to DockerHub Repository
You can view the repository at: `https://hub.docker.com/r/koolnoob/project4`

## Configuring GitHub Secrets

### Setting a Secret in GitHub
1. Navigate to your GitHub repository.
2. Go to 'Settings' > 'Secrets'.
3. Click on 'New repository secret'.
4. Name your secret (e.g., `DOCKER_USERNAME`) and enter its value.
5. Click 'Add secret'.

### Secrets Used in This Project
- `DOCKER_USERNAME`: DockerHub username.
- `DOCKER_PASSWORD`: DockerHub password or token.


## Understanding the GitHub Workflow

### Behavior of GitHub Workflow
- **Purpose**: Automatically build and push the Docker image to DockerHub upon code pushes to the main branch.
- **Trigger**: Activates on push events to the `main` branch.

### Customizable Variables in the Workflow
- `your-dockerhub-username/your-repo-name`: Replace with your DockerHub username and repository name.
- `your-image-name`: The name of your Docker image as it will appear in DockerHub.

### Adaptability
- If others use this workflow or if you reuse it, ensure to change the DockerHub username, repository name, and Docker image name to reflect the new context.






