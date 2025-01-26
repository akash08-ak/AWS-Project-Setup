# Define AWS VPC with CIDR block 
resource "aws_vpc" "portfoilio-vpc" {
    cidr_block = var.vpc_cidr

    tags = {
        Name = "portfoilio-vpc"
        environment = var.environment
    }
}

############################################################ Subnet Configuration ############################################################

# Define AWS Public Subnet with CIDR block
resource "aws_subnet" "public_subnet-1" {
    vpc_id            = aws_vpc.portfoilio-vpc.id
    cidr_block        = var.public_subnet_cidr-1
    map_public_ip_on_launch = true
    availability_zone = data.aws_availability_zones.available.names[0]

    tags = {
        Name = "public-subnet-1"
        environment = var.environment
    }
}

# Define AWS Private Subnet with CIDR block
resource "aws_subnet" "private_subnet-1" {
    vpc_id     = aws_vpc.portfoilio-vpc.id
    cidr_block = var.private_subnet_cidr-1
    map_public_ip_on_launch = false
    availability_zone = data.aws_availability_zones.available.names[0]
    tags = {
        Name = "private-subnet-1"
        environment = var.environment
    }
}

# Define AWS Public Subnet with CIDR block
resource "aws_subnet" "public_subnet-2" {
    vpc_id            = aws_vpc.portfoilio-vpc.id
    cidr_block        = var.public_subnet_cidr-2
    map_public_ip_on_launch = true
    availability_zone = data.aws_availability_zones.available.names[1]

    tags = {
        Name = "public-subnet-2"
        environment = var.environment
    }
}

# Define AWS Private Subnet with CIDR block
resource "aws_subnet" "private_subnet-2" {
    vpc_id     = aws_vpc.portfoilio-vpc.id
    cidr_block = var.private_subnet_cidr-2
    map_public_ip_on_launch = false
    availability_zone = data.aws_availability_zones.available.names[1]
    tags = {
        Name = "private-subnet-2"
        environment = var.environment
    }
}

############################################################ Internet Gateway Configuration ############################################################

# Define AWS Internet Gateway
resource "aws_internet_gateway" "portfoilio-igw" {
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
        Name = "portfoilio-igw"
        environment = var.environment
    }
}

############################################################ Route Table Configuration ############################################################

# Define AWS Route Table
resource "aws_route_table" "portfoilio-public-route-table-1" {
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
      Name = "portfoilio-public-route-table-1"
      environment = var.environment
    }
}

resource "aws_route_table" "portfoilio-private-route-table-1" {
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
      Name = "portfoilio-private-route-table-1"
      environment  = var.environment
    }
  
}

resource "aws_route_table" "portfoilio-public-route-table-2" {
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
      Name = "portfoilio-public-route-table-2"
      environment = var.environment
    }
}

resource "aws_route_table" "portfoilio-private-route-table-2" {
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
      Name = "portfoilio-private-route-table-2"
      environment  = var.environment
    }
  
}

############################################################ Route Table Association Configuration ############################################################

# Define AWS Route Table Association with Subnet
resource "aws_route_table_association" "portfoilio-public-route-table-association-1" {
    subnet_id      = aws_subnet.public_subnet-1.id
    route_table_id = aws_route_table.portfoilio-public-route-table-1.id
}

resource "aws_route_table_association" "portfoilio-private-route-table-association-1" {
    subnet_id      = aws_subnet.private_subnet-1.id
    route_table_id = aws_route_table.portfoilio-private-route-table-1.id
}

resource "aws_route_table_association" "portfoilio-public-route-table-association-2" {
    subnet_id      = aws_subnet.public_subnet-2.id
    route_table_id = aws_route_table.portfoilio-public-route-table-2.id
}

resource "aws_route_table_association" "portfoilio-private-route-table-association-2" {
    subnet_id      = aws_subnet.private_subnet-2.id
    route_table_id = aws_route_table.portfoilio-private-route-table-2.id
}

############################################################ Route Configuration ############################################################

# Define AWS Route for Internet Gateway
resource "aws_route" "portfoilio-public-route-1" {
    route_table_id         = aws_route_table.portfoilio-public-route-table-1.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.portfoilio-igw.id
}


resource "aws_route" "portfoilio-public-route-2" {
    route_table_id         = aws_route_table.portfoilio-public-route-table-2.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.portfoilio-igw.id
}

############################################################ Security Group Configuration ############################################################

# Define AWS Security Group 

resource "aws_security_group" "portfoilio-sg" {
    name = "portfoilio-security-group"
    vpc_id = aws_vpc.portfoilio-vpc.id

    tags = {
      name = "portfoilio-security-group"
      environment = var.environment
    }


    # Allow HTTP traffic
    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Allow SSH traffic
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Allow all outbound traffic

    egress  {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

}

