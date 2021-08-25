terraform {
  backend "s3" {
    bucket         = "cisa-cool-terraform-state"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    key            = "ansible-role-cdm-certificates/terraform.tfstate"
    profile        = "cool-terraform-backend"
    region         = "us-east-1"
  }
}