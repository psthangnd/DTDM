data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "ec2_first" {
  count         = 1
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.ec2_instance_type
}