output "api_gateway_url" {
  value       = module.api_gateway.api_gateway_url
  description = "Public endpoint of the API Gateway"
}

output "jwt_secret_arn" {
  value       = module.secrets.jwt_secret_arn
  description = "ARN of the JWT secret in Secrets Manager"
}

output "cognito_user_pool_id" {
  value       = module.cognito.user_pool_id
  description = "ID of the Cognito User Pool"
}

output "cognito_app_client_id" {
  value       = module.cognito.app_client_id
  description = "Client ID of the Cognito App Client"
}
