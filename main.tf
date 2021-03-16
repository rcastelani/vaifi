provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws-tf"
  public_key = "file(key-jenkins.pub)"
}
 
resource "aws_instance" "example" {
  ami           = "ami-01eb71e14cef400e2"
  instance_type = "t2.micro"
  key_name = "aws-tf"

  tags = {
    Name = "ExampleInstance"
  }
}
