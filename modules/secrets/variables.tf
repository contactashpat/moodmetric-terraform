variable "project" {
  description = "Project name prefix"
  type        = string
}

variable "jwt_secret" {
  description = "JWT signing secret"
  type        = string
  sensitive   = true
}