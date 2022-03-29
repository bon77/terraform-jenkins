variable "aws_region" {
  description = "AWS region to create resources"
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID"
  default     = "demo-vpc"
}

variable "cidr_block" {
  description = "IP block to allow access from"
  default     = "0.0.0.0/0"
}

variable "key_name" {
  description = "ssh key file name for jenkins"
  default     = "jenkins.rsa"
}
