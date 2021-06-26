provider "aws" {
	region = var.AWS_DEFAULT_REGION
 	access_key = var.AWS_ACCESS_KEY_ID
	secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "b" {
	bucket = "learning-test-bucket1"
	acl = "private"
	
	tags = {
		Name = "My-learning-Bucket1"
		Environment = "Dev"
	}
	versioning {
		enabled = true
	}
}
