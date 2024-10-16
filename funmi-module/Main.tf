variable node_name {}
variable "sg_name" {}

resource "aws_instance" "dev_node" {
    ami             = var.ami
    instance_type   = var.instance_type
    key_name        = var.key_name

    tags = {
        Name  = var.node_name
    }
  
}