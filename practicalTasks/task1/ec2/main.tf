#creating spot instnace
resource "aws_spot_instance_request" "samplespotec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = module.sggroup.sggroupid

  tags = {
    Name = "UnderstandVariableModulez"
  }
}
