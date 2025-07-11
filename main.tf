module "network" {
    source= "./network"
    vpc_name = var.vpc_name
    vpc_cidr_block = var.vpc_cidr_block
    public_subnet_cidr_block = var.public_subnet_cidr_block 
    private_subnet_cidr_block = var.private_subnet_cidr_block
    availability_zone = var.availability_zone
}

module "security_group" {
    source = "./security_group"
    ec2_sg_name = "project-ec2-sg"
    vpc_id = module.network.vpc_id
    public_subnet_cidr_block = var.public_subnet_cidr_block
  
}

module "aws_instance" {
    source = "./ec2"
    ami = var.ami
    instance_type = var.instance_type  
    associate_public_ip_address = true
    vpc_id = module.network.vpc_id
    tags = {
        Name = "MyEC2Instance"
    }
    #subnet_id = tolist(module.network.public_subnet_id)
}
