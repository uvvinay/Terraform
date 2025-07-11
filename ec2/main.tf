variable "ami" {}
variable "instance_type" {}
variable "tags" {}
variable "associate_public_ip_address" {}
variable "vpc_id" {}
 
  

resource "aws_instance" "my_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name = "awskey"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = var.associate_public_ip_address
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
    delete_on_termination = true
  }
  tags =  var.tags
    user_data=var.jen_3_tier_terra.sh

}
resource "aws_key_pair" "aws_pub_key" {
    key_name="awskey"
    public_key="var.public_key"
}