variable "cidr_blocks" {
  default     = "0.0.0.0/0"
  description = "CIDR for sg"
}

variable "sg_name" {
  default     = "line-chatbotrds_sg"
  description = "Tag Name for sg"
}
