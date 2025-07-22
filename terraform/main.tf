# Simple
# provider "aws" {
#     region = "ap-south-1"
# }

# resource "aws_instance" "example" {
#   ami = "ami-0f918f7e67a3323f0"
#   instance_type = "t2.micro"
#   subnet_id = "subnet-0179ed4d5d2181d47"
#   key_name = "terraform"
# }

# different region 

# provider "aws" {
#   alias = "region-1"
#   region = "region-1"
# }

# provider "aws" {
#   alias = "region-2"
#   region = "region-2"
# }

# resource "aws_instance" "region-1" {
#   ami = "ami-0f918f7e67a3323f0"
#   instance_type = "t2.micro"
#   subnet_id = "subnet-0179ed4d5d2181d47"
#   key_name = "terraform"
#   provider = aws.region-1
# }

# resource "aws_instance" "region-2" {
#   ami = "ami-0f918f7e67a3323f0"
#   instance_type = "t2.micro"
#   subnet_id = "subnet-0179ed4d5d2181d47"
#   key_name = "terraform"
#   provider = aws.region-2
# }


# variable

# variable "ami_value" {
#   type = string
#   default = "ami-0f918f7e67a3323f0"
# }

# variable "instance_type" {
#   type = string
#   default = "t2.micro"
# }

# variable "subnet_id" {
#   type = string
#   default = "subnet-0179ed4d5d2181d47"
# }

# variable "key_name" {
#   type = string
#   default = "terraform"
# }

# resource "aws_instance" "variable" {
#   ami = var.ami_value
#   instance_type = var.instance_type
#   subnet_id = var.subnet_id
#   key_name = var.key_name
# }