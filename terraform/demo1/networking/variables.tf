## VPC
variable "cidr_block" {
  #default = "172.31.0.0/16"
  default = "10.0.0.0/16"
}


## IG
variable "az_count" {
  description = "Number of AZs to cover in a given AWS region"
  default     = "2"
}


## Security Group
variable "cidr_blocks" {
  default     = "0.0.0.0/0"
  description = "CIDR for sg"
}

variable "sg_name" {
  default     = "line-chatbotrds_sg"
  description = "Tag Name for sg"
}


## Subnet
variable "line-chatbot-subnet1_cidr" {
  default     = "10.0.1.0/24"
  description = "Your AZ"
}

variable "line-chatbot-subnet2_cidr" {
  default     = "10.0.2.0/24"
  description = "Your AZ"
}

variable "line-chatbot-subnet3_cidr" {
  default     = "10.0.3.0/24"
  description = "Your AZ"
}

variable "az_1" {
  default     = "us-east-2a"
  description = "Your Az1, use AWS CLI to find your account specific"
}

variable "az_2" {
  default     = "us-east-2b"
  description = "Your Az2, use AWS CLI to find your account specific"
}

variable "az_3" {
  default     = "us-east-2c"
  description = "Your Az2, use AWS CLI to find your account specific"
}

