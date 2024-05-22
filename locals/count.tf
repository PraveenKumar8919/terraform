resource "aws_instance" "web" {
  #count = 11
  count = length(var.Intance_name)
  ami           = var.ami_id
  instance_type = local.instance_type

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
  records = local.route53_records
}