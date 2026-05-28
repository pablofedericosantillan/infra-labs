# AWS region where the EC2 instance and network resources will be created.
variable "aws_region" {
  type        = string
  description = "AWS region for the lab resources."
  default     = "us-east-1"
}

# Prefix used to name resources created by this lab.
variable "project_name" {
  type        = string
  description = "Name prefix for all resources."
  default     = "infra-labs"
}

# EC2 instance type. t2.micro is commonly eligible for free tier in supported accounts.
variable "instance_type" {
  type        = string
  description = "EC2 instance type."
  default     = "t2.micro"
}

# Existing AWS key pair name used for SSH access.
# Create one in AWS first, or leave empty if you do not need SSH.
variable "key_name" {
  type        = string
  description = "Optional EC2 key pair name for SSH access."
  default     = ""
}

# CIDR allowed to connect by SSH.
# Replace with your public IP in production-like tests.
variable "allowed_ssh_cidr" {
  type        = string
  description = "CIDR block allowed to SSH into the EC2 instance."
  default     = "0.0.0.0/0"
}
