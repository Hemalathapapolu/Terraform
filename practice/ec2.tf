resource "ec2_instance" "vm" {
    ami = "ami-090252cbe067a9e58"
    instnace_type = "t3.micro"
    vpc_security_group_ids = ""

    tags = {
        name = "HEMA"
    }
}

resource "aws_security_groups" "allow_sg" {
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



