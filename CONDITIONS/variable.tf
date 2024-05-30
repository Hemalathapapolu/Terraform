variable "ami_id" {
    type = string
    default = "ami-090252cbe067a9e58"
}

variable "instance_id" {
    type = string
    default = "t3.micro"
}

variable "security_group_name"{
    default = "allow_sg"
}

variable "inbound_port" {
    default = 22
}

variable "protocol_name" {
    default = "tcp"
}

variable "cidr_range" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "outbound_port" {
    default = 0
}

variable "all_protocol" {
    default = "-1"
}

variable "instance_condition" {
    default = "db"
}