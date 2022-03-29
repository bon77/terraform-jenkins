resource "aws_instance" "web" {
  ami             = data.aws_ami.amazon_linux.id
  instance_type   = "m2.medium"
  key_name        = var.key_name
  security_groups = [aws_security_group.jenkins_sg.name]
  user_data       = "${file("install_jenkins.sh")}"
  tags = {
    Name = "Jenkins"
  }
}
