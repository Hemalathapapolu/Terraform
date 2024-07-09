resource "aws_instance" "DB" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_sg.id]

    tags = {
        Name = "Hema"
    }
}

resource "aws_security_group" "allow_sg" {
    name = "allow_sg"
    description = "allowing ssh"
 
 ingress {
        to_port = var.to_port
        from_port = var.from_port
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
 }
 egress {
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
 }
    tags = {
        Name = "allow_sg"
    }
}



