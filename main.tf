terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.48.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  default_tags {
    tags = var.default_tags
  }
}

module "rds" {
  source  = "app.terraform.io/healthfirst/rds/aws"
  version = "1.0.0"

  cluster_identifier      = var.cluster_identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  availability_zones      = var.availability_zones
  database_name           = var.database_name
  db_subnet_group_name    = var.db_subnet_group_name
  vpc_security_group_ids  = var.vpc_security_group_ids
  instance_count          = var.instance_count
  instance_class          = var.instance_class
  skip_final_snapshot     = true
}
