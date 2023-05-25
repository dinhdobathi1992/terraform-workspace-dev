# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}


module "backbones-resources" {
  source  = "dinhdobathi1992/backbones-resources/aws"
  version = "0.2.0"
  vpc_name = var.vpc_name
  region = var.region
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  cidr = var.cidr
}
    




