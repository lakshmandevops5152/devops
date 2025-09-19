resource "aws_subnet" "Devops_1" {
  vpc_id                  = aws_vpc.Devops.id
  cidr_block              = "192.168.1.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Devops-subnet-1"
  }
}

resource "aws_subnet" "Devops_2" {
  vpc_id                  = aws_vpc.Devops.id
  cidr_block              = "192.168.2.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Devops-subnet-2"
  }
}

resource "aws_subnet" "Devops_3" {
  vpc_id                  = aws_vpc.Devops.id
  cidr_block              = "192.168.3.0/24"
  availability_zone       = "ap-south-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "Devops-subnet-3"
  }
}
