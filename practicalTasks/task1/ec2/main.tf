#creating spot instnace
resource "aws_spot_instance_request" "samplespotec" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = sggroup.aws_security_group.allow_tls.id

  tags = {
    Name = "UnderstandVariableModulez"
  }
}
