resource "aws_instance" "ec2" {
    # ami = "ami-0089b8e98cd95257d"
    ami = "${data.aws_ami.latest-ubuntu.id}"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
    tags = {
      Name = "test"
    }
    

  
}