resource "tls_private_key" "my_key" {
  algorithm = "RSA"
}

resource "local_file" "name2" {
  filename = "../keys/my_private_key_pem"
  content = tls_private_key.my_key.private_key_pem
}

resource "aws_key_pair" "ec2-key" {
  key_name = "my-ec2-key" 
  public_key = tls_private_key.my_key.public_key_openssh
}

