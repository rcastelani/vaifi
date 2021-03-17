provider "aws" {
  profile = "default"
  region  = "sa-east-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws-tf"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDns3VwSGmJZNYd+I9YChma/Nr9zAj+pbGe4xrx/4WdgWVblrjrR1PsnB2s5PjMQzZ4ICHrd/RTEhxCpaQmkENiH0EV0dikhujoHllrt5VFqidFWz8kZvdj6Pry10k8VPKpYOKNkUl96AL58yCZnlY9USmCL58lMlYenLwwi7Wo6cn+sZHUg6w8eMFWYL0EoSqXL8dXPkadiIbrEUrtiZUM8ZsReetGxBEcL77GN539bQOvMvS7np+gejqgn7rVhcQMTN8V1fLb5bwVqM7ZZoxDx33pbDw82OG/0/rFVFWb9fYt3Q9XR3nr4tMd492jkkHDR19H62d7Kr9Oyilv6xOvsmZUHt27/GZVqGD7rPW8GB/nFfovDAHbCHyqirKtg9XUcSBSFuDRUGMXdX6J7JPA+NPJNLSZs2KZ7pcx8+RAMat3MvRQc1Jsdb0AF3oCzLLYTgDVl4agFmtBgESiPbLWo2C9nNxbnMlyKbI3gPzR03d+23KeMdV6buKABGRY4Yu8PyRcWFji/P9wDnKrapUY/PHxmCVUCyZX1uhDa3yEis5xExmox7bb9hMq8IXFWSQT9dLQfXn2hzW11sT1RQ67/JM+AQDC1ya+RY08uIpaOvn7OhXVh18XSXMuVKAW4dpDl2Oz+EsQhPaoskTPsFieZZ9m/Myj4JiNZ6kY+Fu9Bw== redecorp\\a0120407@NSPECOPE06LW7T"
}
 
resource "aws_instance" "example" {
  ami           = "ami-01eb71e14cef400e2"
  instance_type = "t2.micro"
  key_name = "aws-tf"

  tags = {
    Name = "ExampleInstance"
  }
}
