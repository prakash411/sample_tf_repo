variable "ami" {
  type    = string
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}

variable "key" {
  type = string
}


variable "iam_profile" {
  type = string
}

variable "ec2_name" {
  type = string
}