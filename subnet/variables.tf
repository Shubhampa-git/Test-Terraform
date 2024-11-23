# variable "vpc_id" {
#   description = "The ID of the VPC"
# }

# variable "public_cidrs" {
#   description = "The CIDR blocks for public subnets"
# }

# variable "private_cidrs" {
#   description = "The CIDR blocks for private subnets"
# }

# variable "azs" {
#   description = "The availability zones for the subnets"
# }

# variable "name" {
#   description = "The name prefix for subnets"
# }
variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "public_cidrs" {
  description = "The CIDR blocks for public subnets"
}

variable "private_cidrs" {
  description = "The CIDR blocks for private subnets"
}

variable "azs" {
  description = "The availability zones for the subnets"
}

variable "name" {
  description = "The name prefix for subnets"
}
