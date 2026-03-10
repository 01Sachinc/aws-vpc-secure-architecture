variable "region" {
  description = "AWS region"
  type        = "string"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = "string"
  default     = "10.0.0.0/24"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = "string"
  default     = "10.0.0.0/25"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = "string"
  default     = "10.0.0.128/25"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = "string"
  default     = "t2.micro"
}
