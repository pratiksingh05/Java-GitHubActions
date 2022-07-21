terraform {
 backend "s3" {
   bucket         = "uniprot"
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   dynamodb_table = "601356012742-alu-geneos-dev-tfstate"
 }
}