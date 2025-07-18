variable "project" {
  description = "Project name prefix"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_count" {
  description = "Number of public subnets to create"
  default     = 2
}

variable "availability_zones" {
  description = "List of availability zones to use"
  type        = list(string)
}