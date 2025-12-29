variable "vpc_id" {
  description = "The ID of the VPC where security groups will be created"
  type        = string
}

variable "env_prefix" {
  description = "Environment prefix (e.g., prod, dev)"
  type        = string
}

variable "my_ip" {
  description = "Your public IP for SSH access (CIDR format)"
  type        = string
}

