##resource "aws_subnet" "line_chatbot_public_subnet1" {
##  vpc_id            = aws_vpc.main.id
##  cidr_block        = var.line_chatbot_public_subnet1_cidr
##  availability_zone = var.az_1

##  tags = {
##    Name = "line_chatbot_public_subnet1"
##  }
##}

resource "aws_subnet" "line_chatbot_public_subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line_chatbot_public_subnet2_cidr
  availability_zone = var.az_2

  tags = {
    Name = "line_chatbot_public_subnet2"
  }
}

resource "aws_subnet" "line_chatbot_public_subnet3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line_chatbot_public_subnet3_cidr
  availability_zone = var.az_3

  tags = {
    Name = "line_chatbot_public_subnet3"
  }
}


##resource "aws_subnet" "line_chatbot_private_subnet1" {
##  vpc_id            = aws_vpc.main.id
##  cidr_block        = var.line_chatbot_private_subnet1_cidr
##  availability_zone = var.az_1

##  tags = {
##    Name = "line_chatbot_private_subnet1"
##  }
##}

resource "aws_subnet" "line_chatbot_private_subnet2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line_chatbot_private_subnet2_cidr
  availability_zone = var.az_2

  tags = {
    Name = "line_chatbot_private_subnet2"
  }
}

resource "aws_subnet" "line_chatbot_private_subnet3" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.line_chatbot_private_subnet3_cidr
  availability_zone = var.az_3

  tags = {
    Name = "line_chatbot_private_subnet3"
  }
}