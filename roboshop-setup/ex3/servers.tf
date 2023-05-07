
#====acessing map variable in creation of resources=================

data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = ["973714476881"]
}

resource "aws_instance" "servers" {
  for_each = var.instance
  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["type"]
#   wait_for_fulfillment   = "true"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = each.value["name"]
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

output "publicip" {
  value = [ aws_instance.servers["catalogue"].public_ip, aws_instance.servers["user"].public_ip]
}
output "multipleip" {
  value = [ for k,v in aws_instance.servers : v.public_ip ]
}

output "multipleip2" {
  value = [ for k,v in aws_instance.servers: "${k} is ${v.public_ip}" ]
}

#========immeture way of code, same achivable as above=======

# variable "names" {
#   default = ["user","catalogue"]
  
# }

# variable "types" {
#   default = ["t3.micro","t3.small"]
  
# }

# resource "aws_instance" "servers" {
#   count = length(var.names)
#   ami           = data.aws_ami.ami.image_id
#   instance_type = var.types[count.index]
# #   wait_for_fulfillment   = "true"
#   vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
#   tags = {
#     Name = var.names[count.index]
#   }
# }

#===========immeture code ended=================