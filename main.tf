provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-01eb71e14cef400e2"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
