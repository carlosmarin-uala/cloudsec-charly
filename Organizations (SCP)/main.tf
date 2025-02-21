provider "aws" {
  region = var.aws_region
  profile = "billing"
  #############################
  # IMPORTANTE - IMPORTANTE - IMPORTANTE #
  # ANTES DE DEPLOYAR VALIDAR QUE SE ESTE USANDO EL PROFILE CORRECTO
  # Y QUE LAS CREDENCIALES ESTEN ACTUALIZADAS EN AWS CLI
}

resource "aws_organizations_policy" "denegar_creacion_usuarios_iam" {
  name        = var.policy_name
  description = var.policy_description
  type        = var.policy_type

  content = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Deny",
        "Action": var.iam_action
        "Resource": "*"
      }
    ]
  })
}
