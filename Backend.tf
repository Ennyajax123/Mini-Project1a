# creating the backend system
resource "aws_security_group" "backend-sg" {
  name = "Mini-Project1a-backend-sg"
  # ... other configuration ...

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "backend" {
  ami                    = var.backend_ami
  instance_type          = var.backend_instance_type
  key_name               = var.backend_key_name
  #user_data              = file("./backend-install.sh")
  vpc_security_group_ids = [aws_security_group.backend-sg.id]
  tags = {
    Name = "backend"
  }
}