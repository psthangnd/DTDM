variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "AWS EC2 instance type"
}


## ecs-alb
variable "key_name" {
  default = "Line-chatbot"
  description = "Name of AWS key pair"
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