provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "aws-tf"
  public_key = tls_private_key.this.public_key_openssh
}

resource "aws_instance" "example" {
  ami           = "ami-01eb71e14cef400e2"
  instance_type = "t2.micro"
  key_name = "aws-tf"

  tags = {
    Name = "ExampleInstance"
  }
}
