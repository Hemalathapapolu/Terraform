resource "aws_ami" "ec2" {
    ami = "ami-090252cbe067a9e58" 
    type = "t2.micro"
    vpc_security_group_ids = ["default"]
    tags {
        name = "EC2"
    }
}