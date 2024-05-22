locals {
  name = PraveenKumar
  instance_type = var.Intance_name[count.index] == "mongodb" || var.Intance_name[count.index] == "mysql" || var.Intance_name[count.index] == "shipping" ? "t3.small" : "t2.micro"

  route53_records = [var.Intance_name[count.index] == "web" ? aws_instance.web[count.index].public_ip :aws_instance.web[count.index].private_ip]

}