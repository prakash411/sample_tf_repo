resource "aws_instance" "www" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.ec2-key.key_name
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  iam_instance_profile   = aws_iam_instance_profile.ec2-profile.name

  tags = {
    "Name" = "www"
  }
}




