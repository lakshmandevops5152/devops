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


