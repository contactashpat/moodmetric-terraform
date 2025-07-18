resource "aws_secretsmanager_secret" "jwt" {
  name        = "${var.project}-jwt-secret-v2"
  description = "JWT signing key for MoodMetric API"
  recovery_window_in_days = 0  # deletes immediately if removed
  force_overwrite_replica_secret = true
}

resource "aws_secretsmanager_secret_version" "jwt" {
  secret_id     = aws_secretsmanager_secret.jwt.id
  secret_string = var.jwt_secret
}
