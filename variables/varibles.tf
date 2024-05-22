variable "ami_id" {
    type = string
    default = "ami-0f3c7d07486cad139"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "tags" {
    type = map
    default = {
        Name = "Terraform server"
        Project = "Roboshop"
        Environment = "DEV"
        Componenent = "Web"
        Terraform = "true"
    }
}

variable "sg-name" {
    type = string
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
