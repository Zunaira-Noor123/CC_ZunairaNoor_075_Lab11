variable "env_prefix" {
  type        = string
  description = "Environment prefix (e.g., prod, dev)"
}

variable "instance_name" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "availability_zone" {
  type        = string
  description = "AWS Availability Zone"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where instance will be launched"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for the instance"
}

variable "security_group_id" {
  type        = string
  description = "Security Group ID for the instance"
}

variable "public_key" {
  type        = string
  description = "Public key for SSH access"
}

variable "script_path" {
  type        = string
  description = "Path to user-data script"
}

variable "instance_suffix" {
  type        = string
  description = "Unique suffix for naming the instance/key"
}

variable "common_tags" {
  type        = map(string)
  description = "Common tags applied to all resources"
}

