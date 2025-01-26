# Show VPC ID
output "vpc-id" {
    value = aws_vpc.portfoilio-vpc.id
}

# Show Jenkins server public IP
output "jenkins_server_public_ip" {
    value = aws_instance.jenkins_server.public_ip
}

 # Show Sonar server public IP
output "sonar_server_public_ip" {
    value = aws_instance.sonar_server.public_ip
}

# Show Nexus server public IP
output "nexus_server_public_ip" {
    value = aws_instance.nexus_server.public_ip
} 

