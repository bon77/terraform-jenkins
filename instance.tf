resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  key_name               = aws_key_pair.jenkins_keypair.key_name
  user_data              = "${file("install_jenkins.sh")}"
  depends_on             = [aws_internet_gateway.main-gw]
  tags = {
    Name = "Jenkins"
  }
}
resource "aws_instance" "clusterman" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id, aws_security_group.jenkins_internal.id]
  key_name               = aws_key_pair.jenkins_keypair.key_name
  user_data              = "${file("install_clusterman.sh")}"
  depends_on             = [aws_internet_gateway.main-gw]
  tags = {
    Name = "clusterman"
  }
}
