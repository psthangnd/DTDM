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
