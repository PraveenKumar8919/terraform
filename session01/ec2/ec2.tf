resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.roboshop_aws.id]

  tags = {
    Name = "Terraform Server"
  }
}

resource "aws_security_group" "roboshop_aws" {  # name here for terraform reference
  name        = var.sg_name         #name here for aws reference
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      ="Allow all ports"
    from_port        = var.inbound-from-port
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    #ipv6_cidr_blocks = ["::/0"]
  }

   tags = {
    Name = "roboshop_terraform_aws"
  }
}

