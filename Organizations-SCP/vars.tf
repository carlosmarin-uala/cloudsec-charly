variable "aws_region" {
  description = "La región de AWS donde se desplegarán los recursos"
  type        = string
  default     = "us-east-1"
}

variable "policy_name" {
  description = "Nombre de la política de la organización"
  type        = string
  default     = "Prueba-Crear-SCP-ByTerra-Charly"
}

variable "policy_description" {
  description = "Descripción de la política"
  type        = string
  default     = "Deniega la creacion de usuarios IAM en todas las cuentas"
}

variable "policy_type" {
  description = "Tipo de política"
  type        = string
  default     = "SERVICE_CONTROL_POLICY"
}

variable "iam_action" {
  description = "Acción IAM a denegar"
  type        = string
  default     = "iam:CreateUser"
}