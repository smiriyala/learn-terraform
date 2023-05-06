##every resource contains ARGUMENTS AND ATTRIBUTES - arguments - inputs, attributes - return values
data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = "973714476881"

    filter {
      name = "zone_type"
      values = "us-east-1"
    }
}

output "ami_id" {
    value = data.aws_ami.ami.image_id
  
}