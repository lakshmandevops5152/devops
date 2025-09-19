resource "aws_vpc" "Devops" {
    cidr_block = "192.168.0.0/16"
    enable_dns_hostnames = "true"

    tags = {
      Name = "demo"
      Env  = "Dev"
    }
  
}

resource "aws_subnet" "Devops-1" {
    vpc_id = aws_vpc.demo.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-2a"
    map_public_ip_on_launch = true

    tags = {
      Name = "Devops-1" 
    }
  
}

resource "aws_internet_gateway" "Devops-igw" {
  vpc_id = aws_vpc.Devops.id

  tags = {
    Name = "Devops-igw"
  }
}

resource "aws_route_table" "demo_rt" {
  vpc_id = aws_vpc.Devops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Devops-igw.id
  }

  tags = {
    Name = "example"
  }
}

resource "aws_route_table_association" "demo_rt_association" {
  subnet_id      = aws_subnet.demo_1.id
  route_table_id = aws_route_table.demo_rt.id
}

