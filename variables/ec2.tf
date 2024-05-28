resource "aws_instance" "db"{
    ami = var.ami_id
    instance_type = var.instance_id
    vpc_security_group_ids= [aws_security_group.allow_sg.id]
    tags = {
        Name = "First-instance"
    }
}

resource "aws_security_group" "allow_sg" {
    name        = var.security_group_name
    description = "Allow TLS inbound traffic and all outbound traffic"

    ingress {
        from_port = var.inbound_port
        to_port = var.inbound_port
        protocol = var.protocol_name
        cidr_blocks = var.cidr_range
    }
    egress {
        from_port = var.outbound_port
        to_port = var.outbound_port
        protocol = var.all_protocol
        cidr_blocks = var.cidr_range
    }

    tags = {
        Name = "ssh"
    }
}
