## Reflection

### 1. Containerization with Docker
The problem did not explicitly ask to containerize the app, but I chose Docker to simplify deployment and ensure consistent environments.

### 2. GitHub Container Registry for Image Hosting
I chose to push the Docker image to GHCR for simplicity and GitHub Actions compatibility.

### Trade-offs
- Could have used ECS for better scaling, but EC2 is easier for basic setup.
- AWS Secrets Manager requires IAM setup which adds complexity, but it's much safer than using plain text secrets.
