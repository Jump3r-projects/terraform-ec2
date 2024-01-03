variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "newVarName"
}

variable "region_name" {
  description = "Change region"
  type        = string
  default     = "us-east-2"
}
