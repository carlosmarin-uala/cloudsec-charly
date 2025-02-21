terraform {
  backend "s3" {
    bucket         = "charly-terraform-backend"               # Nombre de tu bucket S3
    encrypt        = true                       # Habilita la encriptación para el estado
    key            = "cloudsecurity/405941243308/terraform.tfstate"  # Ruta del estado en S3
    region         = "us-east-1"                # Región de S3 y DynamoDB
    dynamodb_table = "charly-terraform-locks2"                # Nombre de la tabla DynamoDB para el bloqueo
  }
}