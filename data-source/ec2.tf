resource "aws_instance" "web" {
  ami           = data.aws_ami.centos8
  instance_type = "t2.micro"

  tags = {
    Name = "data-source"
  }
}
