resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = local.instance_type

  tags = {
    Name = "Locals"
  }
}


# resource "aws_route53_record" "www" {
#   count = 11
#   #count = length(var.Instance_name)
#   zone_id = var.zone_id
#   name    = "${var.Instance_name[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1
#   records = [local.route53_records]
#}