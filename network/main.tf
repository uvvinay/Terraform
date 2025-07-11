variable "vpc_name" {}
variable "vpc_cidr_block" {}
variable "public_subnet_cidr_block" {}
variable "private_subnet_cidr_block" {}
variable "availability_zone" {}

output "proj-vpc_id" {
  value = aws_vpc.project_vpc.id
  
}
#vpc creation
resource "aws_vpc" "proj-vpc" {
    cidr_block = var.vpc_cidr_block
  tags = {
    name= var.vpc_name
  }
}
#public subnet
resource "aws_subnet" "public_subnet" {
  count = length(var.public_subnet_cidr_block)
  vpc_id = aws_vpc.proj-vpc.id
  cidr_block = var.public_subnet_cidr_block[count.index]
  availability_zone = var.availability_zone[count.index]
  #map_public_ip_on_launch = true
  tags = {
    Name = "aws-public-subnet-${count.index + 1}"
  }
}

#private subnet
resource "aws_subnet" "private_subnet" {
  count = length(var.private_subnet_cidr_block)
  vpc_id = aws_vpc.proj-vpc.id
  cidr_block = var.private_subnet_cidr_block[count.index]
  availability_zone = var.availability_zone[count.index]
  tags = {
    Name = "aws-private-subnet-${count.index + 1}"
  }
}

#internet gateway
resource "aws_internet_gateway" "proj-igw" {
  vpc_id = aws_vpc.proj-vpc.id
  tags = {
    Name = "aws-igw"
  }
}

#route table
resource "aws_route_table" "proj-rt" {
  vpc_id = aws_vpc.proj-vpc.id
  route = {
    cidr_block = "0.0.0/0"
    gateway_id = aws_internet_gateway.proj-igw.id 
}
  tags = {
    Name = "aws-route-table"
  }
}

#private route table
resource "aws_route_table" "proj-private-rt" {
  vpc_id = aws_vpc.proj-vpc.id
  tags = {
    Name = "aws-private-route-table"
  }
}

#public route table association
resource "aws_route_table_association" "proj-public-rt-assoc" {
  count = length(aws_subnet.public_subnet)
  subnet_id = aws_subnet.public_subnet[count.index].id
  route_table_id = aws_route_table.proj-rt.id
}

#private route table association
resource "aws_route_table_association" "proj-private-rt-assoc" {
  count = length(aws_subnet.private_subnet)
  subnet_id = aws_subnet.private_subnet[count.index].id
  route_table_id = aws_route_table.proj-private-rt.id
}
