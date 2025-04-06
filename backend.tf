terraform {
 backend "s3" {
   bucket = "terraform-backend-terraformbackends3bucket-0mz0idtjnch6"
   key = "web-server"
   region = "eu-west-2"
   dynamodb_table = "terraform-backend-TerraformBackendDynamoDBTable-1PBO1LFJJS6EH"
 }

}