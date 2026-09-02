module "infra_setup" {
  source = "./Modules/main-infra"
}


module "jenkins_infra" {
  source = "./Modules/Jenkins-infra"
  key = module.infra_setup.aws_key_name
  iam_profile = module.infra_setup.iam_instance_profile_id
  ec2_name= "Jenkins Server"
  ami = "ami-081b0a6eac00b4f53"
  instance_type = "t3.medium"

  depends_on = [ module.infra_setup ]
}

