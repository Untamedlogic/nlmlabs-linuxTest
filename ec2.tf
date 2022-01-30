module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "Linux Test Machine"

  ami                    = "ami-0d718c3d715cec4a7"
  instance_type          =  var.instance_type
  vpc_security_group_ids = ["sg-068b2f61f90b4d644"]
  subnet_id              = "subnet-afd13bd2"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
