module "vpcCreation"{
  source = "./vpc-aws"
  vpc_cidr  = var.vpc_cidr
}


module "SecGroupCreation" {
  source = "./sggroup"
  vpc_cidr  = var.vpc_cidr
  vpc_id = module.vpcCreation.vpcid
}

module "Ec2Instance_Creation" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  #above module reference need to called OUTPUT variable
  vpc_sec_group_ids = module.SecGroupCreation.secgroup_out
  #sggroupid = module.sggroup.sggroupid

}