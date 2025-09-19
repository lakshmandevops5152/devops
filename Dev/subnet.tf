

resource "aws_subnet" "Devops-2" {
    vpc_id =  aws_vpc.Devops.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = true

    tags = {
      Name = "Devops-subnet -2" 
    }
  
}
resource "aws_subnet" "Devops-3" {
    vpc_id = aws_vpc.Devops.id
    cidr_block = "192.168.3.0/24"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = true

    tags = {
      Name = "Devops-subnet -3" 
    }
  
}

