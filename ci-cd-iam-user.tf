resource "aws_iam_user" "ci_cd_user" {
  name = "github-actions-ci-user"
}

resource "aws_iam_user_policy" "ci_cd_policy" {
  name = "GithubActionsCICDPolicy"
  user = aws_iam_user.ci_cd_user.name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid    = "TerraformCI",
        Effect = "Allow",
        Action = [
          "ec2:*",
          "ecs:*",
          "elasticloadbalancing:*",
          "logs:*",
          "secretsmanager:*",
          "cognito-idp:*",
          "apigateway:*",
          "iam:PassRole"
        ],
        Resource = "*"
      },
      {
        Sid    = "ReadOnlyForDebugging",
        Effect = "Allow",
        Action = [
          "iam:Get*",
          "iam:List*",
          "ec2:Describe*",
          "cloudwatch:Describe*",
          "cloudwatch:Get*"
        ],
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_access_key" "ci_cd_user_key" {
  user = aws_iam_user.ci_cd_user.name
}

output "ci_cd_access_key_id" {
  value       = aws_iam_access_key.ci_cd_user_key.id
  description = "Use this in GitHub Secrets as AWS_ACCESS_KEY_ID"
  sensitive   = true
}

output "ci_cd_secret_access_key" {
  value       = aws_iam_access_key.ci_cd_user_key.secret
  description = "Use this in GitHub Secrets as AWS_SECRET_ACCESS_KEY"
  sensitive   = true
}
