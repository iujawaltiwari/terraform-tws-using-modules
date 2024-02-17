variable "ami" {
  type = string
  description = "this is the AMI Id for EC2 instance"
}
variable "instance_type" {
  type = string
  description = "this is the instance type for EC2 instance"
}
variable "instance_name" {
  type = string
  description = "this is the inatance name for EC2 instance"
}
variable "env" {
  type = string
  description = "this is the env for infra"
}

