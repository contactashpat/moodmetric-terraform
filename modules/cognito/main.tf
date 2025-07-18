resource "aws_cognito_user_pool" "main" {
  name = "${var.project}-user-pool"
}

resource "aws_cognito_user_pool_client" "main" {
  name         = "${var.project}-app-client"
  user_pool_id = aws_cognito_user_pool.main.id
  generate_secret = false
  explicit_auth_flows = ["ALLOW_USER_PASSWORD_AUTH", "ALLOW_REFRESH_TOKEN_AUTH"]
}