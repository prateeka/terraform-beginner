provider "aws" {
  shared_config_files = ["/Users/prateek/.aws/config"]
  region              = "us-west-1"
  profile             = "poweruseraccess" # Configuration options
}

resource "aws_instance" "my-first-terraform-instance" {
  ami           = "ami-051ed863837a0b1b6"
  instance_type = "t3.micro"
  tags = {
    Name = "terraform-instance"
  }
}