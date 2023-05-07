
#====acessing map variable in creation of resources=================

data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = ["973714476881"]
}

resource "aws_instance" "servers" {
  for_each = var.instance
  ami           = data.aws_ami.ami.image_id
  instance_type = var.value["type"]
#   wait_for_fulfillment   = "true"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = var.value["name"]
  }
}

variable "instance" {
    default = {
      catalogue = {
        name = "catalogue"
        type = "t3.micro"
      }
      user = {
        name = "user"
        type = "t3.small"
      }

    }
}

#we have several instances, hence can be used * to represent multiple pupublic IP address
output "publicip" {
    value = aws_instance.frontend.*.public_ip
  
}

