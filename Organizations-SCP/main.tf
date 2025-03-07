provider "aws" {
  region = var.aws_region
}

resource "aws_organizations_policy" "denegar_creacion_usuarios_iam" {
  name        = var.policy_name
  description = var.policy_description
  type        = var.policy_type

  content = jsonencode(
    {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Deny",
        "Action": var.iam_action
        "Resource": "*",
        "Condition": {
        "StringNotEquals": {
          "identitystore:UserId": [
            "9067073511-165e9956-13b0-4df4-b8b0-365e6cb056e5"
          ]
        }
        }
      }
    ]
    }
  )
}
