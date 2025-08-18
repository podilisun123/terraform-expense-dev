data "aws_ssm_parameter" "vpc_id" {
    name = "/${var.projct_name}/${var.environment}/vpc_id"
    type = String
    value = module.vpc.vpc_id
}
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.projct_name}/${var.environment}/public_subnet_ids"
  type = StringList
  value = value = module.vpc.public_subnet_ids
}
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.projct_name}/${var.environment}/private_subnet_ids"
  type = StringList
  value = value = module.vpc.private_subnet_ids
}
data "aws_ssm_parameter" "database_subnet_ids" {
  name = "/${var.projct_name}/${var.environment}/database_subnet_ids"
  type = StringList
  value = value = module.vpc.database_subnet_ids
}