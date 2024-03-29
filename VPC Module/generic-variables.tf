# Input Variables

# AWS Region
variable "aws_region" {
  default     = "us-east-1"
  description = "region where aws resources are going to be created"
  type        = string
}

# Environment variable
variable "environment" {
  default     = "dev"
  description = "Environment Variable used as a prefix"
  type        = string
}

# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}

