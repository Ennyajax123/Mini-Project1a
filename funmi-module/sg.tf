resource "aws_security_group" "dev_sg_node" {
  name = "dev-a_sg_node"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = var.ingress_port_1 
    to_port          = var.ingress_port_1 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}
  ingress {
    from_port        = var.ingress_port_2 
    to_port          = var.ingress_port_2 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "dev-1_sg_node" {
  name = "dev-b_sg_node"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = var.ingress_port_1 
    to_port          = var.ingress_port_1 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}
  ingress {
    from_port        = var.ingress_port_2 
    to_port          = var.ingress_port_2 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "prod_sg_node" {
  name = "prod-a_sg_node"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = var.ingress_port_1 
    to_port          = var.ingress_port_1 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}
  ingress {
    from_port        = var.ingress_port_2 
    to_port          = var.ingress_port_2 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}
resource "aws_security_group" "prod-1_sg_node" {
  name = "prod-b_sg_node"
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  ingress {
    from_port        = var.ingress_port_1 
    to_port          = var.ingress_port_1 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}
  ingress {
    from_port        = var.ingress_port_2 
    to_port          = var.ingress_port_2 
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}