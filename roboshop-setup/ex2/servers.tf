data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = ["973714476881"]
}

resource "aws_instance" "frontend" {
  count = length(var.instance)
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
#   wait_for_fulfillment   = "true"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = var.instance[count.index]
  }
}

variable "instance" {
    default = ["cart", "catalogue", "user", "payment", "shipping",]
}

#we have several instances, hence can be used * to represent multiple pupublic IP address
output "public ip" {
    value = aws_instance.frontend.*.public_ip
  
}

