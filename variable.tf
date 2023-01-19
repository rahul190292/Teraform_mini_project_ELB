variable "aws_region" {
    type = string
    default = "us-east-2"
}

variable "aws_lb_project" {
    type = string
    default = "nginx"
}

variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}

variable "aws_instance_count" {
    default = 2  
}


data "aws_ami" "ec2_ami_image" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  } 
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}