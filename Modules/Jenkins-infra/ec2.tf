resource "aws_instance" "www" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key
  vpc_security_group_ids = [aws_security_group.web-sg.id]
  iam_instance_profile   = var.iam_profile
  tags = {
    "Name" = var.ec2_name
  }
  user_data = file("${path.module}/Scripts/jenkins-install.sh")
  
  depends_on = [ aws_security_group.web-sg ]

  
}




