terraform{
    backend"s3" {
    bucket="charly-terraform-backend"
    encrypt=true
    key="cloudsecurity/405941243308/terraform.tfstate"
    ################################################
    # IMPORTANTE - IMPORTANTE - IMPORTANTE #
    # RECORDAR COLOCAR EL ACCOUNTID DE LA CUENTA DONDE SE VA A TRABAJAR
    # ESTO PERMITIRA MEJOR TRAZABILIDAD PARA LOS TFSTATES 
    # ACCOUNT IDS MAS USADOS:
    # BILLING: 405941243308
    # SECURITY-PROD: 759751217449
    # SECURITY-DEV: 341880317696
    region="us-east-1"
    dynamodb_table="charly-terraform-locks"
    #use_lockfile=true
    profile = "security-dev"
    #############################
    # IMPORTANTE - IMPORTANTE - IMPORTANTE #
    # SIEMPRE SE DEBE DEJAR ESTE PROFILE security-dev YA QUE AHI SE ENCUENTRA EL BACKEND
    # VALIDAR QUE LAS CREDENCIALES ESTEN ACTUALIZADAS EN AWS CLI
    }
}