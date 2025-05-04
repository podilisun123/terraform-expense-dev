module "vpc" {
    #source = "../aws-vpc-module"
    source = "git::https://github.com/podilisun123/terraform-aws-vpc-module.git?ref=main"
    projct_name = var.projct_name
    environment = var.environment
    common_tags = var.common_tags
    public_subnet_dirs = var.public_subnet_dirs
    private_subnet_dirs = var.private_subnet_dirs
    database_subnet_dirs = var.database_subnet_dirs
    is_peering_required = var.is_peering_required
}