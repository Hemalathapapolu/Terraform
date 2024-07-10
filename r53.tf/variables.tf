variable "ami_id" {
    type = string
    default = "ami-041e2ea9402c46c32"
}
variable "instance_type" {
    type = string
    default = "t3.micro"
}
variable "to_port" {
    default = 22
}
variable "from_port" {
    default =22
}
variable "instance_condition" {
    default = "db"
}
variable "instance_name" {
    type = list(string)
    default = ["db", "backend" , "frontend"]
}
variable "comm_tags" {
    default = {
        env = "dev"
        project = "expence"
        terraform = "true"
    }
}
variable "domain_name" {
    default = "devopps.online"
}