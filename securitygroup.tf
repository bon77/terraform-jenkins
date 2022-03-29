resource "aws_security_group" "jenkins_sg" {
  vpc_id      = aws_vpc.main.id
  name        = "jenkins_sg"
  description = "Allow Jenkins Traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "Allow from Personal CIDR block"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_block]
  }

  ingress {
    description      = "Allow SSH from Personal CIDR block"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [var.cidr_block]
  }

  tags = {
    Name = "Jenkins SG"
  }
}

resource "aws_security_group" "jenkins_internal" {
  vpc_id      = aws_vpc.main.id
  name        = "jenkins_internal"
  description = "Allow all internal Traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "Allow all internal traffic"
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }

  tags = {
    Name = "Jenkins Internal"
  }
}
