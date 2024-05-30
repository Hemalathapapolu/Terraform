resource "aws_instance" "db" {
    ami = "ami-090252cbe067a9e58"
    instance_type = "t3.micro"
}