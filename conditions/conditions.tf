resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type == "MongoDB"? "t3.medium" : "t2.small"
  #vpc_security_group_ids = [aws_security_group.roboshop_aws.id]

  #tags = var.tags
}