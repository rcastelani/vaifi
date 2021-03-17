provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws-tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDEogabCIXYI4Z3DXcnxvlcqi36WTXPUGG8iJ7Sn9ZkArdVOZHeyuICbytaABZzS/51VfhlIz8qssjkTExq580ogHzqki4SS8CTdPKzbmoklkfKuUPTBwaA3xUOYG/B/IuWS3iyw5SvomHd3ZEQ82ovruXger8n5SDwGjVNKj2TAmbQc3xzgrG2aWXpeD68lR+r0zZfZq9HO3q5Mk6iL7StGlZcY6YiS4jxkKxgZK3PpWioJFSyHNpGJryD40JRepHtZ0XSSWydLyKXjc5QlKnI23ybokVqRc9ux1g8A0UhVhYrpGafqW03CLp+SQQ7yC7hAVfGorze1xlm9fL7m+KOx1q4FpuFyj2NY9RnFC7ACyHZIaYOs4lMyke76xP6ltha547ON9EIevw4uoMEzovnvkJ23Jcu75hY3GVtyacHD3Z5i6F7JI+Kxn2M77sK+q0y4RFolEeUXMD6szIBgAVhWV5hQA34FIIvr2Ycr40tGAljg1r+7KJ+UiIZ00YZzf1lN4xvHm1pow55PB5953Uzy545uHkLXzSMjXD96xLHCI2+vg2FYyntvmWTM3UcrspA3Tem8/LuLQNurXevxazMh/tBM6GaBYLTqM3zsFTbnJmA+P04mR+HUZjbifhSY9Src183TReGSGhZh+7DcxGbp5vbE2Jd4r0hHZqhxJlwuw== root@ip-172-31-14-255.sa-east-1.compute.internal"
}
 
resource "aws_instance" "example" {
  ami           = "ami-01eb71e14cef400e2"
  instance_type = "t2.micro"
  key_name = "aws-tf"

  tags = {
    Name = "ExampleInstance"
  }
}
