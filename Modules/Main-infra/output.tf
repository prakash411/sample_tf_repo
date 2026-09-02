output "aws_key_name" {
  value = aws_key_pair.ec2-key.key_name
}

output "iam_instance_profile_id" {
  value = aws_iam_instance_profile.ec2-profile.name
}

output "vpc_id" {
  value = data.aws_vpc.default.id
}