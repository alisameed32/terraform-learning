# Variable for AWS region
variable "region" {
  default = "us-east-1"
  type = string
}

variable "ami" {
  default     = "ami-0c55b159cbfafe1f0"
}

variable "instance_type" {
  default     = "t2.micro"
}