module "vpc" {

  source = "./modules/vpc"

  vpc_cidr = var.vpc_cidr

  public_subnet_cidr = var.public_subnet_cidr

  availability_zone = var.availability_zone

  environment = var.environment
}


module "ec2" {

  source = "./modules/ec2"

  vpc_id = module.vpc.vpc_id

  subnet_id = module.vpc.public_subnet_id

  ami_id = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name

  environment = var.environment

  instance_name = var.instance_name
}