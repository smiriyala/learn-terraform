data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = "973714476881"
}


resource "aws_spot_instance_request" "frontend" {
  count = 5
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
}

