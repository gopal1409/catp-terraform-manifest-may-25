/*resource "aws_instance" "servers" {
  for_each = var.instance
  ami = each.value.ami
  instance_type = each.value.instance_type
  tags = {
    Name= "env0-gopal-${each.key}"
  }
}
*/