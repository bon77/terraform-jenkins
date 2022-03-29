resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.medium"
  subnet_id              = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]
  key_name               = aws_key_pair.jenkins_keypair.key_name
  user_data              = "${file("install_jenkins.sh")}"
  tags = {
    Name = "Jenkins"
  }
}
