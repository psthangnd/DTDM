## ecs-alb
variable "aws_region" {
  default = "us-east-2"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}

variable "key_name" {
  default = "Line-chatbot"
  description = "Name of AWS key pair"
}

variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "AWS EC2 instance type"
}

variable "asg_min" {
  description = "Min numbers of servers in ASG"
  default     = "1"
}

variable "asg_max" {
  description = "Max numbers of servers in ASG"
  default     = "2"
}

variable "asg_desired" {
  description = "Desired numbers of servers in ASG"
  default     = "1"
}

variable "service_desired" {
  description = "Desired numbers of instances in the ecs service"
  default     = "1"
}

variable "admin_cidr_ingress" {
  default     = "172.31.0.0/16"
  description = "CIDR to allow tcp/22 ingress to EC2 instance"
}

## rds
variable "identifier" {
  default     = "line-chatbot"
  description = "Identifier for your DB"
}

variable "storage" {
  default     = "10"
  description = "Storage size in GB"
}

variable "engine" {
  default     = "mysql"
  description = "Engine type, example values mysql, mariadb"
}

variable "engine_version" {
  description = "Engine version"

  default = {
    mysql    = "8.0.23"
    mariadb = "10.5.12"
  }
}

variable "db_instance_class" {
  default     = "db.t2.micro"
  description = "DB Instance class"
}

variable "db_name" {
  default     = "line-chatbot-mysql"
  description = "DB name"
}

variable "username" {
  default     = "admin@psnet.asia"
  description = "User name"
}

variable "password" {
  default = "password"
  description = "password, provide through your ENV variables"
}
