data "aws_ami" "my_custom_ami" {
  most_recent      = true
  name_regex       = "devops_with_ansible"
  owners           = ["938981715324"]

}

resource "aws_instance" "demo_instances" {
  for_each = var.ec2_instances
  instance_type = each.value.type
  ami = data.aws_ami.my_custom_ami.id
  key_name = "my-local-keypair"
  vpc_security_group_ids = [ "sg-09f4376dd2384c7fd" ]
  tags = {
    Name = each.value.name
  }
}