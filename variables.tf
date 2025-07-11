variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  
}
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}
variable "public_subnet_cidr_block" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  
}
variable "private_subnet_cidr_block" {
  type = list(string)

}
variable "region" {
  description = "AWS region"
  type        = list(string)    
}
variable "availability_zone" {
  description = "Availability zones for the subnets"
  type        = list(string)
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  
}
variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string  
  
}
variable "public_key" {
  description = "Public key for SSH access"
  type        = string
  
}