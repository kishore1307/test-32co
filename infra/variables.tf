variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "Public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "Private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "db_password" {
  description = "RDS root password"
  type        = string
  sensitive   = true
}

variable "app_port" {
  description = "Application port"
  default     = 3000
}

variable "db_port" {
  description = "Database port"
  default     = 5432
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "min_size" {
  description = "ASG minimum size"
  default     = 2
}

variable "max_size" {
  description = "ASG maximum size"
  default     = 6
}

variable "domain_name" {
  description = "Domain name for ACM certificate"
  default     = "example.com"
}
