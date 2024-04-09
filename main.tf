terraform {
  required_version = ">=0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.42.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "exemplo" {
  bucket = "meu-repo-teste-bucket007br"
  acl    = "private"

  tags = {

    Name = "Meu-repo-bucket-0007br"

    Environment = "Dev"

    Managedby = "Terraform"

    Owner = "JoaoPaulo"

    UpdateAt = "09/04/24"
  }
}
 