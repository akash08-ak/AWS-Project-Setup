# security group for jenkins server
resource "aws_security_group" "portfoilio-security-group-jenkins" {
    name = "portfoilio-security-group-jenkins"
    vpc_id = aws_vpc.portfoilio-vpc.id
    tags = {
      Name = "portfoilio-security-group-jenkins"
      environment = var.environment
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}


# security group for nexus server
resource "aws_security_group" "portfoilio-security-group-nexus" {
    name = "portfoilio-security-group-nexus"
    vpc_id = aws_vpc.portfoilio-vpc.id
    tags = {
      Name = "portfoilio-security-group-nexus"
      environment = var.environment
    }
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 8081
        to_port     = 8081
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}

# security group for sonar server
resource "aws_security_group" "portfoilio-security-group-sonar" {
    name = "portfoilio-security-group-sonar"
    vpc_id = aws_vpc.portfoilio-vpc.id
    tags = {
      Name = "portfoilio-security-group-sonar"
      environment = var.environment
    }

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 88
        to_port     = 88
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 9000
        to_port     = 9000
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
}