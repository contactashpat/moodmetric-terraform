# MoodMetric Modular Terraform Deployment

## 📦 What This Is
This is a modular, production-style Terraform setup to deploy a secure, scalable REST API (e.g., MoodMetric) using:

- AWS Fargate (ECS) for Dockerized Express + TypeScript API
- API Gateway for routing, rate limiting, SSL, and JWT verification
- Cognito for OAuth2-based identity and JWT token issuance
- DynamoDB for serverless, scalable data storage
- Modular Terraform design

## 🧱 Architecture Overview

```
Client ─▶ API Gateway ─▶ ECS Fargate ─▶ Express API ─▶ DynamoDB
         └─▶ JWT Auth (via Cognito)
```

## 🧰 Setup Instructions

1. **Install prerequisites:**
   - Terraform CLI
   - AWS CLI (`aws configure` with IAM user)
   - Docker (for building your image)

2. **Update `terraform.tfvars`:**
   - Set `aws_region` and other variables as needed

3. **Build and push your Docker image (optional):**
   - `docker build -t moodmetric-api .`
   - `docker tag moodmetric-api <your_ecr_repo_url>`
   - `docker push <your_ecr_repo_url>`

4. **Apply Terraform:**
   ```
   terraform init
   terraform plan
   terraform apply
   ```

## 🔐 Auth Flow
- Use Cognito to register users or connect to an identity provider (e.g., Google)
- Client receives a JWT and includes it in the `Authorization: Bearer <token>` header
- API Gateway validates JWT before forwarding requests to ECS

## 📁 Module Structure
- `modules/network`: VPC, subnets, security groups
- `modules/ecs`: Task definition, IAM roles, Fargate service
- `modules/api_gateway`: REST API + integrations
- `modules/cognito`: User pool, client app
- `modules/dynamodb`: Table definitions for MoodMetric

## ✅ Next Steps
- Fill in each module with real resource definitions
- Add secrets via AWS Secrets Manager or SSM
- Optionally enable logging and monitoring
# moodmetric-terraform
