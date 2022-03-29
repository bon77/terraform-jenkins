variable "aws_region" {
  description = "AWS region to create resources"
  default     = "eu-west-1"
}

variable "cidr_block" {
  description = "IP block to allow access from"
  default     = "0.0.0.0/0"
}

variable "azs" {
  description = "Availability zones for the region"
  default = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "PATH_TO_PRIVATE_KEY" {
  description = "local path to ssh private key for AWS"
  default = "ssh-keys/jenkins.rsa"
}

variable "PATH_TO_PUBLIC_KEY" {
  description = "local path to ssh public key for AWS"
  default = "ssh-keys/jenkins.rsa.pub"
}
