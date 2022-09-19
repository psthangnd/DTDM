## VPC
resource "aws_vpc" "main" {
  cidr_block	= var.cidr_block
}


# IG
data "aws_availability_zones" "available" {}

resource "aws_subnet" "main" {
  count             = var.az_count
  cidr_block        = cidrsubnet(aws_vpc.main.cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  vpc_id            = aws_vpc.main.id
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "a" {
  count          = var.az_count
  subnet_id      = element(aws_subnet.main.*.id, count.index)
  route_table_id = aws_route_table.r.id
}


## Security Group
resource "aws_security_group" "default" {
  name        = "main_rds_sg"
  description = "Allow all inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = [var.cidr_blocks]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.sg_name
  }
}


## Subnet
resource "aws_subnet" "line-chatbot-subnet1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line-chatbot-subnet1_cidr
  availability_zone = var.az_1

  tags = {
    Name = "line-chatbot-subnet1"
  }
}

resource "aws_subnet" "line-chatbot-subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line-chatbot-subnet2_cidr
  availability_zone = var.az_2

  tags = {
    Name = "line-chatbot-subnet2"
  }
}

resource "aws_subnet" "line-chatbot-subnet3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line-chatbot-subnet3_cidr
  availability_zone = var.az_3

  tags = {
    Name = "line-chatbot-subnet3"
  }
}
