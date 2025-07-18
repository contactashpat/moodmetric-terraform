variable "project" {
  description = "Project name prefix"
  type        = string
}

variable "jwt_secret" {
  description = "JWT secret"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy resources in"
  type        = string
}

variable "cognito_user_pool_id" {
  description = "Cognito User Pool ID"
  type        = string
}

variable "cognito_app_client_id" {
  description = "Cognito App Client ID"
  type        = string
}

variable "ecs_service_url" {
  description = "URL of the ECS service (e.g., behind ALB)"
  type        = string
}

variable "domain_name" {
  description = "Base domain name for Route 53"
  type        = string
}

variable "api_gateway_dns_name" {
  description = "API Gateway DNS name (used in Route 53 alias)"
  type        = string
}

variable "api_gateway_zone_id" {
  description = "Hosted zone ID for API Gateway"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g. dev, prod)"
  type        = string
  default     = "dev"
}
