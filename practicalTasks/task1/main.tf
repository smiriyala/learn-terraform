module "SecGroupCreation" {
  source = "./sggroup"
  cidr_block = var.cidr_block
  sggroupid = var.sggroupid

}

module "Ec2Instance_Creation" {
  source = "./ec2"
  ami_id = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.sggroupid

}