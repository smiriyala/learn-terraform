terraform {
  backend "s3" {
    bucket = "devopsterraform-s71"
    key = "05-s3-state/terraform.tfstate"
    region = "us-east-1"
  }
}


resource "aws_instance" "ec2" {
    # ami = "ami-0089b8e98cd95257d"
    ami = "ami-0b5a2b5b8f2be4ec2"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
    tags = {
      Name = "test"
    }
  
}