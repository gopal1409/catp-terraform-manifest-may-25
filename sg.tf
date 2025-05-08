/*resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_gopal" #add your name here
  description = "Allow ssh inbound traffic"
  

  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http_gopal"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http_gopal" #add your name here
  description = "Allow ssh inbound traffic"
  

  ingress {
    description = "htt from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http_gopal"
  }
}*/