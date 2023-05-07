module "vpc" {
  source                    = "./vendor/modules/vpc"
  VPC_CIDR                  = var.VPC_CIDR
  ENV                       = var.ENV
  PUBLIC_SUBNET_CIDR        = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR       = var.PRIVATE_SUBNET_CIDR
  AZ                        = var.AZ
  DEFAULT_VPC_ID            = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR          = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT            = var.DEFAULT_VPC_RT
  PRIVATE_HOSTED_ZONE_ID    = "Z01019823KGEEYKYEE9GQ"
  PRIVATE_HOSTED_ZONE_NAME  =  "roboshop.internal"
#   PUBLIC_HOSTED_ZONE_ID     = var.PUBLIC_HOSTED_ZONE_ID
#   PUBLIC_HOSTED_ZONE_NAME   = var.PUBLIC_HOSTED_ZONE_NAME
 }

#THIS ALWAYS GOES WITH THE MAIN BRANCH , TELL THE CODE TO PICK FROM INTENDED BRANCH
