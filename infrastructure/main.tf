locals {
  name    = var.aws_rds_db.name
  region  = var.aws_rds_db.region
  region2 = var.aws_rds_db.region2

  tags = {
    Name        = local.name
    Environment = var.environment_name
    Owner       = var.owner
    Provisioner = "terraform"
    Repository  = "https://github.com/abhisheksr01/springboot-jpa"
  }
}

data "aws_caller_identity" "current" {}