module "SecGroupCreation" {
  source = "./sggroup"
  cidr_block = var.cidr_block

}

module "Ec2Instance_Creation" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  vpcsecgroupid = var.vpcsecgroupid
}