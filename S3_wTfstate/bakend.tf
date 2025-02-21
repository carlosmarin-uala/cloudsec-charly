terraform{
    backend"s3" {
    bucket="charly-terraform-backend"
    encrypt=true
    key="cloudsecurity/341880317696/terraform.tfstate"
    ################################################
    # IMPORTANTE - IMPORTANTE - IMPORTANTE #
    # RECORDAR COLOCAR EL ACCOUNTID DE LA CUENTA DONDE SE VA A TRABAJAR
    # ESTO PERMITIRA MEJOR TRAZABILIDAD PARA LOS TFSTATES 
    region="us-east-1"
    dynamodb_table="charly-terraform-locks"
    #use_lockfile=true
    }
}