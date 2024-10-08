# creating the Database system
resource "aws_security_group" "Database-sg" {
  name = "Mini-Project1a-Database-sg"
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
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "Database" {
  ami                    = var.Database_ami
  instance_type          = var.Database_instance_type
  key_name               = var.Database_key_name
  #user_data              = file("./Database-install.sh")
  vpc_security_group_ids = [aws_security_group.Database-sg.id]
  tags = {
    Name = "Database"
  }
}