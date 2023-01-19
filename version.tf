terraform {
    required_version = "~>1.3.6"
    required_providers {
        aws={
            sosource = "hashicorp/aws"
            version = "~>4.45.0"
        }
    }
}

provider "aws" {
    region = var.aws_region
}