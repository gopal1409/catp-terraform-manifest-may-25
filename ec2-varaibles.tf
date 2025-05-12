#input variables
variable "aws_region" {
  description = "value of the aws region"
  type = string
    default = "us-east-1"
}

variable "instance_type"{
    description = "value of the instance type"
    type = string
    default = "t2.micro"
}

variable "instance_keypair"{
    description = "value of the instance keypair"
    type = string
    default = "terraform"  
}

variable "instance_tag"{
    description = "value of the instance keypair"
    type = string
    default = "gopal-ec2"  
}