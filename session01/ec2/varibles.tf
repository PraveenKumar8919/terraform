variable "sg_name" {
  type  = string
  default = "roboshop_terraform_aws"
}


variable "sg_description" {
  type  = string
  default = "allow all tls inbound traffic"
}

variable "inbound-from-port" {
  #type  = string
  default = 0
}

variable "cidr_blocks" {
  type  = list
  default = ["0.0.0.0/0"]
}
