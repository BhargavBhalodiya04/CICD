provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  subnet_id = "subnet-0179ed4d5d2181d47"
  key_name = "terraform"
}