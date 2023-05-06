
resource "aws_spot_instance_request" "frontend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "frontend"
  }
}

#creating DNS record
resource "aws_route53_record" "frontend" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "frontend-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.frontend.private_ip]
}

resource "aws_spot_instance_request" "catalogue" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "catalogue"
  }
}

#creating DNS record
resource "aws_route53_record" "catalogue" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "catalogu-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.catalogue.private_ip]
}

#user connected mongodb and redis
resource "aws_spot_instance_request" "user" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "user"
  }
}

#creating DNS record
resource "aws_route53_record" "user" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "user-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.user.private_ip]
}

#mongodb connectd to User and Catalogue
resource "aws_spot_instance_request" "mongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "mongodb"
  }
}

#creating DNS record
resource "aws_route53_record" "mongodb" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "mongodb-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.mongodb.private_ip]
}

resource "aws_spot_instance_request" "cart" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "cart"
  }
}

#creating DNS record
resource "aws_route53_record" "cart" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "cart-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.cart.private_ip]
}



#redis connected to User and Cart
resource "aws_spot_instance_request" "redis" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "redis"
  }
}

#creating DNS record
resource "aws_route53_record" "redis" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "redis-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.redis.private_ip]
}

#shipping connected to Mysql
resource "aws_spot_instance_request" "shipping" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "shipping"
  }
}

#creating DNS record
resource "aws_route53_record" "shipping" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "shipping-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.shipping.private_ip]
}

#Mysql connected to Shipping
resource "aws_spot_instance_request" "mysql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "mysql"
  }
}

#creating DNS record
resource "aws_route53_record" "mysql" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "mysql-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.mysql.private_ip]
}

#Payment connected to Rabbitmq
resource "aws_spot_instance_request" "payment" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "payment"
  }
}

#creating DNS record
resource "aws_route53_record" "payment" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "payment-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.payment.private_ip]
}

#Rabitmq connected to payment
resource "aws_spot_instance_request" "Rabbitmq" {
  ami           = "ami-0b5a2b5b8f2be4ec2"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ "sg-0111cc490d6b33509" ]
  tags = {
    Name = "Rabbitmq"
  }
}

#creating DNS record
resource "aws_route53_record" "Rabbitmq" {
  zone_id = "Z034160419BHTFKQ5CIGO"
  name    = "rabbitmq-dev.devopsforyou.online"
  type    = "A"
  ttl     = 30
  records = [aws_spot_instance_request.rabbitmq.private_ip]
}