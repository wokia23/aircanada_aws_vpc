terraform {
  backend "s3" {
    bucket         = "aircanada-terraform-state2026"
    key            = "networking/terraform.tfstate"
    region        = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform_aws_networking_state-lock"
  }
}