resource "aws_key_pair" "jenkins_keypair" {
  key_name   = "jenkins_keypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

