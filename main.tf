terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "sa-east-1" # Região de São Paulo
}

# 1. Criando o Cofre (Secrets Manager) na AWS
resource "aws_secretsmanager_secret" "meu_cofre_seguro" {
  name        = "senha-banco-de-dados-producao"
  description = "Cofre criado via Pipeline CI/CD automática"

  # Isso evita que o segredo fique 'pendurado' por 30 dias se deletarmos
  recovery_window_in_days = 0
}

# 2. Guardando uma senha (exemplo) dentro do cofre
resource "aws_secretsmanager_secret_version" "senha_cofre" {
  secret_id     = aws_secretsmanager_secret.meu_cofre_seguro.id
  secret_string = "P@ssw0rd_Segur4_2026!"
}