# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.16"
#     }
#   }

#   required_version = ">= 1.2.0"

# }

# provider "aws" {
#   region = "eu-west-2"
# }

module "create-me-first-machine" {
  source         = "../funmi-module"
  ami            = var.ami
  instance_type  = var.instance_type
  ingress_port_1 = var.dev-1-port-1
  ingress_port_2 = var.dev-1-port-2

}
module "create-me-second-machine" {
  source         = "../funmi-module"
  ami            = var.ami
  instance_type  = var.instance_type
  ingress_port_1 = var.dev-2-port-1
  ingress_port_2 = var.dev-2-port-2
}