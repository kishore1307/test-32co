#!/bin/bash
yum update -y
yum install -y docker git
service docker start
usermod -a -G docker ec2-user
docker run -d -p 80:3000 ghcr.io/your-username/devops-app:latest
