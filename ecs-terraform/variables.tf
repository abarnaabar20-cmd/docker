variable "aws_region" {
  type    = string
  default = "eu-north-1"
}

variable "aws_account_id" {
  type    = string
  default = "649830721920"   # change if needed
}

variable "frontend_ecr_image" {
  type        = string
  description = "649830721920.dkr.ecr.eu-north-1.amazonaws.com/frontend:latest"
}

variable "backend_ecr_image" {
  type        = string
  description = "649830721920.dkr.ecr.eu-north-1.amazonaws.com/backend:latest"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr_a" {
  type    = string
  default = "10.0.1.0/24"
  description = "CIDR block for public subnet A (first AZ)"
}

variable "public_subnet_cidr_b" {
  type    = string
  default = "10.0.2.0/24"
  description = "CIDR block for public subnet B (second AZ)"
}
