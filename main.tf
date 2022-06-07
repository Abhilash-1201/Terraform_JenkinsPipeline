provider "aws" {
  region = "us-east-1"

}
resource "aws_instance" "terraform_wapp" {
    ami = "ami-005de95e8ff495156"
    instance_type = "t2.micro"
    key_name               = "ELK_ubuntu"
    count         = 1
    associate_public_ip_address = true

    tags = {
      "Name"      = "Apache server"
      "Terraform" = "true"
    }
}
