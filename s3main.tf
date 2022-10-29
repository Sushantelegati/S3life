provider "aws" {
    region = "us-east-1"
  
}


resource "aws_s3_bucket" "s3new" {

    bucket = "my-bucket2022-18"

    
      lifecycle_rule {
    id = "archive"
    enabled = true
    transition {
      days = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
    


  
}
}




