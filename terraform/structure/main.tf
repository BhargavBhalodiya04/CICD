provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source = "./resource/ec2_module"
  ami             = "ami-0b32d400456908bf9"
  instance_type   = "t2.micro"
  subnet_id       = "subnet-0179ed4d5d2181d47"
  security_groups = ["sg-0bd9b0d0462d9a462"]
}