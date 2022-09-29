variable "line_chatbot_public_subnet1_cidr" {
  default     = "10.0.0.0/20"
  description = "Your AZ"
}

variable "line_chatbot_public_subnet2_cidr" {
  default     = "10.0.16.0/20"
  description = "Your AZ"
}

variable "line_chatbot_public_subnet3_cidr" {
  default     = "10.0.32.0/20"
  description = "Your AZ"
}


variable "line_chatbot_private_subnet1_cidr" {
  default     = "10.0.128.0/20"
  description = "Your AZ"
}

variable "line_chatbot_private_subnet2_cidr" {
  default     = "10.0.144.0/20"
  description = "Your AZ"
}

variable "line_chatbot_private_subnet3_cidr" {
  default     = "10.0.160.0/20"
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
