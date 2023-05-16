resource "aws_instance" "ec2" {

    ami = "ami-0b5a2b5b8f2be4ec2"
    instance_type = "t3.micro"
    vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
    tags = {
      Name = "demo"
    }

    provisioner "remote-exec" {

        connection {
          host = self.public_ip
          user =  "root"
          password = "DevOps321"
        }

        inline = [ "echo Hello from Provisioners" ]
      
    }
  
}