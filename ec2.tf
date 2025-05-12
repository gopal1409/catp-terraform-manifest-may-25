#i want to create an ec2 instance using terraform
data "aws_ami" "hrms" {
  most_recent = true #look for the recent version of the os

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"] #this is the virtualziation type
  }

  owners = ["099720109477"] # Canonical
}
#the above block will gather the ami information

resource "aws_instance" "web" {
  ami           = data.aws_ami.hrms.id #this is the combination of data block+amiid
  instance_type = var.instance_type
  user_data = file("${path.module}/app/app.sh") #path module looking for sh file in the current directory
  key_name = var.instance_keypair #this is the key pair name
  #vpc_security_group_ids = [ aws_security_group.allow_http.id, aws_security_group.allow_ssh.id ] #this is the combination of security group id
  tags = {
    Name = format("%s-%s", var.instance_tag, terraform.workspace)
  }
}
