terraform {
  backend "s3" {
    bucket = "backend-bucket-r3"
    key    = "main"
    region = "us-east-1"
    dynamodb_table = "my-dyanamodb-table"
  }
}
