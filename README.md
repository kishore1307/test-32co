# DevOps Home Assessment

## Overview

This project demonstrates a secure and scalable infrastructure setup, CI/CD pipeline, secrets management, and monitoring for a Node.js web app.

## Setup Instructions

1. Clone the repo
2. Deploy the infrastructure:

cd infrastructure
terraform init
terraform apply

3. Push code to `main` to trigger CI/CD.

## Tools Used

- AWS
- Terraform
- GitHub Actions
- Docker
- Node.js

## Assumptions

- You're using AWS with permissions to create VPCs, EC2, IAM, etc.
- Docker image is published to GitHub Container Registry.

## Known Limitations

- No unit tests included
- No rollback or blue/green deployment



