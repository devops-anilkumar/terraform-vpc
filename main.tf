module "vpc" {
  source = "vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
}

#THIS ALWAYS GOES WITH THE MAIN BRANCH , TELL THE CODE TO PICK FROM INTENDED BRANCH
