provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "instance" {
  ami = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  subnet_id = "subnet-0179ed4d5d2181d47"
}

# resource "aws_s3_bucket" "bucket" {
#   bucket = "bhargav-terraform-bucket"
# }

resource "aws_dynamodb_table" "dbtable" {
  name         = "DB_Table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

