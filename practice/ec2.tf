resource "aws_instance" "DB" {
    ami = "ami-041e2ea9402c46c32"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_sg.id]

    tags = {
        name = "HEMA"
    }
}

resource "aws_security_group" "allow_sg" {
    name = "allow_sg"
    description = "allowing ssh"
 
 ingress {
        to_port = 22
        from_port = 22
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
        name = "allow_sg"
    }
}



