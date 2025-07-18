module "network" {
  source               = "./modules/network"
  project              = var.project
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_count  = 2
  availability_zones   = ["eu-west-2a", "eu-west-2b"]
}

module "secrets" {
  source      = "./modules/secrets"
  project     = var.project
  jwt_secret  = var.jwt_secret
}

module "ecs" {
  source  = "./modules/ecs"
  project = var.project
}

module "cognito" {
  source  = "./modules/cognito"
  project = var.project
}

module "api_gateway" {
  source                  = "./modules/api_gateway"
  project                 = var.project
  aws_region              = var.aws_region
  cognito_user_pool_id    = module.cognito.user_pool_id
  cognito_app_client_id   = module.cognito.app_client_id
  ecs_service_url         = "https://example.com" # TODO: Replace with real ALB or internal URL
}
