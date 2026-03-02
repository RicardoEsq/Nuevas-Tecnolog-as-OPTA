provider "aws" {
  region = "us-east-1" # Puedes cambiar esto si prefieres otra region
}

variable "prefix" {
  default = "esquivel"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
