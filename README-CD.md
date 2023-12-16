## Project 5- CD

# part 1
- Overview
    The purpose of this project is to keep my website up to date with my github repo, this keeps my website current with the main branch every time it is pushed to, this is a huge QOL change rather than anytime i want to update my website having to go through pushing to github, pulling from github, making a new image and then restarting my website. Ill be using Github, docker, webhook, and ec2 in aws.

    the easy way to tag something it when you are doing your git add, git commit, then do a 'git tag -a v1.blah', you can use a 'git show' to check your tag. then do a 'git push origin v1.blah' to push your tagged commit
    [Docker repo](https://hub.docker.com/repository/docker/koolnoob/f23cicd-kingshampoo/general)

# part 2
- how to install docker on my instance
    So to install docker on my instance its rather easy, i did it with a 'sudo yum install docker -y' which installs docker and we can check to make sure its running with a 'sudo service docker start' and 'docker run hello-world'
    once docker is verified as working we can 'sudo docker pull koolnoob/f23cicd-kingshampoo:main' to get our docker repo pulled and get the current version we have out. 
    'sudo docker run -i -t {image id} /bin/bash' to run 

    my container restart script is called pull-restart.sh and its located in the home dir, this is because im lazy and not the normal location which would be in a secure folder with tighter perms like the etc folder. this script kills + removes the current running website and image, pulls the new one, and then runs the new one.

    setting up webhook on the server was a bit of a pain and i think this is where i was messing up
    to install i tried 
    'curl -L https://github.com/adnanh/webhook/releases/download/2.8.1/webhook-linux-amd64.tar.gz -o webhook-linux-amd64.tar.gz' 
    'tar -xzvf webhook-linux-amd64.tar.gz'
    'mkdir webhooks'
    'cd webhooks'
    and made hook.json and pull-restart.sh using vim, both of these files are in my deployment folder
    my hook file has an id of restart containters, then signals to run my pull-restart file and then specifies /var/webhook as our working dir. 

    i used dockerhub to message the listener, super easy since all i do is go to dockerhub repo, webhooks, new and name it (project5) and give it a url (http://54.234.87.12:9000/hook/webhook)
    uhhhhhhhhhhhhhhhhhhhhhhhhhh ill try and get this but im having issues uploading my video, ill try yt soon if this keeps not working. 