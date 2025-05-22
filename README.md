# DevOps Node App with LocalStack

## Overview
This is a simple Node.js app that gets deployed using Docker, Terraform, and GitHub Actions. LocalStack is used to simulate AWS services locally.

## Steps to Run

### 1. Start LocalStack
```bash
docker run --rm -it -p 4566:4566 localstack/localstack
```

### 2. Export fake AWS credentials
```bash
export AWS_ACCESS_KEY_ID=test
export AWS_SECRET_ACCESS_KEY=test
export AWS_DEFAULT_REGION=us-east-1
```

### 3. Initialize and apply Terraform
```bash
cd terraform
terraform init
terraform apply
```

### 4. Build and run Docker container
```bash
docker build -t devops-node-app .
docker run -p 3000:3000 devops-node-app
```

### 5. Test the app
Open `http://localhost:3000` in your browser or:
```bash
curl http://localhost:3000
```
