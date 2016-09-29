resource "aws_route53_zone" "private" {
    name = "${var.private_domain}"
    vpc_id = "${var.vpc_id}"

    tags {
        Name = "${var.private_domain}"
    }
}