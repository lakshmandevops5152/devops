

resource "aws_instance" "ST-Jenkins" {
    ami = "ami-01b6d88af12965bb6"

    key_name = " ST-Jenkins"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.Devops-sg-1]
    availability_zone = "ap-south-a"
    disable_api_termination = true
    subnet_id = aws_subnet.Devops-1.id

    root_block_device {
      volume_size = "20"
      volume_type = "gp3"

      tags = {
        Name = "Jenkins serve_vol_1"
      }

    }

    tags = {
      Name = "ST-Jenkins"
      Env  = "ST"
    }

  
}

