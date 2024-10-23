resource "aws_instance" "dev-Environment" {
    ami             = var.ami
    instance_type   = var.instance_type
    key_name        = var.key_name
    vpc_security_group_ids = [aws_security_group.sg_node.id]
  tags = {
    Name = var.node_name
    }
}
resource "aws_instance" "dev_Environment-1" {
    ami             = var.ami
    instance_type   = var.instance_type
    key_name        = var.key_name
    vpc_security_group_ids = [aws_security_group.sg_node.id]
  tags = {
    Name = var.node_name
    }
}
resource "aws_instance" "prod-Environment" {
    ami             = var.ami
    instance_type   = var.instance_type
    key_name        = var.key_name
    vpc_security_group_ids = [aws_security_group.sg_node.id]
  tags = {
    Name = var.node_name
}
}
resource "aws_instance" "prod-Environment-1" {
    ami             = var.ami
    instance_type   = var.instance_type
    key_name        = var.key_name
     vpc_security_group_ids = [aws_security_group.sg_node.id]
  tags = {
    Name = var.node_name
}
}