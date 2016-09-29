resource "aws_route53_zone" "public" {
    name = "${var.public_domain}"

    tags {
        Name = "${var.public_domain}"
    }
}