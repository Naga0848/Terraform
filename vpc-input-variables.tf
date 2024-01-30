# VPC Input variables

# VPC Name
variable "vpc_name" {
  description = "name of the vpc"
  default     = "Dev-VPC"
  type        = string
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "vpc cidr block"
  default     = "10.0.0.0/16"
  type        = string
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "private subnets of VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# VPC Public subnets
variable "vpc_public_subnets" {
  description = "public subnets of vpc"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Availability zones
variable "vpc_availability_zones" {
  description = "availability zones of vpc"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

# VPC Database subnets
variable "vpc_database_subnets" {
  description = "database subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.152.0/24"]
}

# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  description = "vpc create database subnet group"
  type        = bool
  default     = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "vpc create database subnet route table"
  type        = bool
  default     = true
}

# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "vpc enable nat gateway"
  type        = bool
  default     = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "vpc single nat gateway"
  type        = bool
  default     = true
}