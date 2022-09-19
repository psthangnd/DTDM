data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "ec2_first" {
  tags = {
    Name 		= "ec2_first"
  }
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
  count         = 1
  key_name		= "Line-chatbot"
  #network_interface {
  #  network_interface_id = aws_network_interface.ni.id
  #  device_index         = 0
  #}
}