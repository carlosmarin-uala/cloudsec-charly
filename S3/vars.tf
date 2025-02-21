variable "aws_region" { 
    description = "Región de AWS donde se desplegará el bucket" 
    type = string 
    default = "us-east-1" # Valor predeterminado 
    } 
variable "bucket_name" { 
    description = "Nombre del bucket S3" 
    type = string 
    default = "pruebas3-charly-by-terra" # Valor predeterminado 
    } 