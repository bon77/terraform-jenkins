output "Jenkins_public_ip" {
  value = aws_instance.web.public_ip
}

output "AKS_Cluster_Manager_public_ip" {
  value = aws_instance.clusterman.public_ip
}
