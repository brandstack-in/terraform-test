terraform {
  backend "s3" {
    bucket       = "gk-my-new-testing-bucket"
    key          = "ec2/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}