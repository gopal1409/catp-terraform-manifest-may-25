/*variable "instance"{
    description = "map of instance configruation "
    type = map(object({
        ami = string
        instance_type = string
        
    }))
    default = {
      "amzlinux" = {
        ami = "ami-0f88e80871fd81e91"
        instance_type = "t2.micro"
      }
        "ubuntu" = {
            ami = "ami-084568db4383264d4"
            instance_type = "t2.small"
        }
    }
}*/