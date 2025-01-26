resource "aws_instance" "nexus_server" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t3.medium"
    key_name = var.key_name
    subnet_id = aws_subnet.public_subnet-1.id
    vpc_security_group_ids = [aws_security_group.portfoilio-security-group-nexus.id]
    user_data = file("${path.module}/Scripts/nexus_install.sh")
    root_block_device {
      volume_size = 20
    }
    tags = {
        Name = "nexus-server"
        environment = var.environment
    }
} 