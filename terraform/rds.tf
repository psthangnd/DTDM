resource "aws_db_instance" "default" {
  engine                 = var.engine
  engine_version         = var.engine_version[var.engine]
  identifier             = var.identifier
  #Credentials Setting
  db_name                   = var.db_name
  username               = var.username
  password               = var.password
  #Instance configuration
  instance_class         = var.db_instance_class
  allocated_storage      = var.storage
  #Connectivity
  depends_on             = [aws_security_group.default]
  vpc_security_group_ids = [aws_security_group.default.id]
  db_subnet_group_name   = aws_db_subnet_group.default.id
}

resource "aws_db_subnet_group" "default" {
  name        = "main_subnet_group"
  description = "Our main group of subnets"
  subnet_ids  = [aws_subnet.line_chatbot_public_subnet2.id, 
				aws_subnet.line_chatbot_public_subnet3.id]
}
