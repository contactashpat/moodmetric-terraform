output "jwt_secret_arn" {
  value       = aws_secretsmanager_secret.jwt.arn
  description = "ARN of the JWT secret"
}