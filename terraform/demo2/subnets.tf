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
