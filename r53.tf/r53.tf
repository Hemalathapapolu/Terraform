resource "aws_route53_record" "R53" {
    count = length(var.instance_name)
    zone_id = "Z05866401B36V603KEZMA"
    name = var.instance_name[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${var.domain_name}"
    type = "A"
    ttl = 1
    records = var.instance_name[count.index] == "frontend" ? [aws_instance.DB[count.index].public_ip] : [aws_instance.DB[count.index].private_ip]
    allow_overwrite = "true"
}