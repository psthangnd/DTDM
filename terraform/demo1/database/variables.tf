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