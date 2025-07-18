resource "aws_secretsmanager_secret" "jwt" {
  name        = "${var.project}-jwt-secret"
  description = "JWT signing key for MoodMetric API"
}

resource "aws_secretsmanager_secret_version" "jwt" {
  secret_id     = aws_secretsmanager_secret.jwt.id
  secret_string = var.jwt_secret
}