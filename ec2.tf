resource "aws_instance" "myec2" {
   name = "Linux Test Machine"
   ami = "ami-0d718c3d715cec4a7"
   instance_type = var.instance_type
 }
