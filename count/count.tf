resource "aws_instance" "web" {
  #count = 11
  count = length(var.Intance_name)
  ami           = var.ami_id
  instance_type = var.Intance_name[count.index] == "mongodb" || var.Intance_name[count.index] == "mysql" || var.Intance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"

  tags = {
    Name = var.Intance_name[count.index]
  }
}


resource "aws_route53_record" "www" {
  #count = 11
  count = length(var.Intance_name)
  zone_id = var.zone_id
  name    = "${var.Intance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [var.Intance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip :aws_instance.web[count.index].private_ip]
}