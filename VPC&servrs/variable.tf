# CIDR block for the VPC
variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

# Environment variable
variable "environment" {
    description = "The environment for the VPC"
    type        = string
    default     = "dev"
}

# Subnet CIDR block
variable "public_subnet_cidr-1" {
    description = "The CIDR block for the public subnet"
    type        = string
    default     = "10.0.0.0/24"
}

variable "private_subnet_cidr-1" {
    description = "The CIDR block for the private subnet"
    type        = string
    default     = "10.0.1.0/24"
}

variable "public_subnet_cidr-2" {
    description = "The CIDR block for the public subnet"
    type        = string
    default     = "10.0.2.0/24"
}

variable "private_subnet_cidr-2" {
    description = "The CIDR block for the private subnet"
    type        = string
    default     = "10.0.3.0/24"
}
# Key pair name
variable "key_name" {
    description = "The key pair name for the instance"
    type        = string
    default     = "portfolio-key"
}