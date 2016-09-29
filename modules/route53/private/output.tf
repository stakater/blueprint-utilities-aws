output "private_zone_id" {
  value = "${aws_route53_zone.private.zone_id}"
}

output "private_domain" {
  value = "${var.private_domain}"
}