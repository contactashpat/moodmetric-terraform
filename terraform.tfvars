project                  = "moodmetric"
aws_region               = "eu-west-2"
environment              = "dev"

# Cognito (leave blank or generate via output if managed by Terraform)
cognito_user_pool_id     = ""
cognito_app_client_id    = ""

# ECS Integration (placeholder for now)
ecs_service_url          = "https://example.com"

# API Gateway DNS + Route 53 (can leave dummy if not using hosted zone alias)
api_gateway_dns_name     = "placeholder.execute-api.eu-west-2.amazonaws.com"
api_gateway_zone_id      = "Z2FDTNDATAQYW2"  # Example: use AWS docs if needed

# 🔐 JWT secret for signing
jwt_secret               = "replace-me-with-a-real-secret"
