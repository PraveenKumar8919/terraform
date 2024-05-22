resource "aws_security_group" "roboshop_aws" {  # name here for terraform reference
  name        = var.sg-name         #name here for aws reference
  description = var.sg_description
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      =var.sg_description
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
