resource "aws_instance" "Jenkins" {
  ami                         = "ami-01b6d88af12965bb6"
  key_name                    = "Jenkins"
  instance_type               = "t2.micro"        # Fixed typo (was t2.mmicro)
  vpc_security_group_ids      = [aws_security_group.Devops-sg-1.id]
  availability_zone           = "(ap-south-1a"
  disable_api_termination     = true              # Boolean, not string
  subnet_id                   = aws_subnet.Devops_1.id

  root_block_device {
    volume_size           = 20                   # Number, not string
    volume_type           = "gp3"
    delete_on_termination = true

    tags = {
      Name = "Jenkins_serve_vol_1"
    }
  }

  tags = {
    Name = "Jenkins"
    Env  = "Dev"
  }
}
