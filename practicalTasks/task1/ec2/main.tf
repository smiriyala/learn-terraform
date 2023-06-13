#creating spot instnace
resource "aws_spot_instance_request" "samplespotec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ var.vpc_sec_group_ids ]

  tags = {
    Name = "UnderstandVariableModulez"
  }
}
