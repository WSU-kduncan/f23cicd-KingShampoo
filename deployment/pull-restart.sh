#! /bin/bash
sudo docker kill website
sudo docker rm website
sudo docker image rm koolnoob/f23cicd-kingshampoo:latest
sudo docker pull koolnoob/f23cicd-kingshampoo:latest
sudo docker run -d -p 80:80 --name  website koolnoob/f23cicd-kingshampoo:latest