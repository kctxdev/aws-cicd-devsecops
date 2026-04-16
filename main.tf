terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}

resource "aws_secretsmanager_secret" "meu_cofre_seguro" {
  name                    = "senha-banco-de-dados-producao"
  description             = "Cofre criado via Pipeline CI/CD automática"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "senha_cofre" {
  secret_id     = aws_secretsmanager_secret.meu_cofre_seguro.id
  secret_string = "P@ssw0rd_Segur4_2026!"
}