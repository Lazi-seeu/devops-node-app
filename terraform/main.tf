terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id     = true
	
  endpoints {
    s3 = "http://localhost:4566"
  }

  default_tags { 
    tags = {
      Environment = "local"
    }
  }
  s3_use_path_style = true
}
resource "aws_s3_bucket" "app_bucket" {
  bucket = "devops-localstack-bucket"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.app_bucket.bucket
}
