module "SecGroupCreation" {
  source = "./sggroup"
  vpc_cidr  = var.vpc_cidr

}

/* module "Ec2Instance_Creation" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  sggroupid = module.sggroup.sggroupid

} */