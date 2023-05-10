resource "aws_instance" "test" {

    ami = "ami-0b5a2b5b8f2be4ec2"
    instance_type = var.instance_type == "" ? "t3.small" : var.instance_type
    vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
    tags = {
      
    }
}

variable "instance_type" {
  
}