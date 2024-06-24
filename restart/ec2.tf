resource "ec2_instance" "vm" {
    ami = "ami-090252cbe067a9e58" 
    instance_type = "t2.micro"
    vpc_security_group_ids = ["default"]
    tags = {
        name = "EC2"
    }
}