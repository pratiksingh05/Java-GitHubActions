terraform {
 backend "s3" {
   bucket         = "uniprot"
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   dynamodb_table = "terraform-state"
 }
}