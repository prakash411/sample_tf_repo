resource "aws_instance" "www" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = aws_key_pair.ec2-key.key_name
}

resource "aws_key_pair" "ec2-key" {
  key_name = "my-ec2-key" 
  public_key = tls_private_key.my_key.public_key_openssh
}


