terraform{
    backend"s3" {
    bucket="charly-terraform-backend"
    encrypt=true
    key="cloudsecurity/405941243308/terraform.tfstate"
    region="us-east-1"
    #dynamodb_table="charly-terraform-locks"
    use_lockfile=true
    }
}