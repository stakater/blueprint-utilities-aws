output "public_zone_id" {
  value = "${aws_route53_zone.public.zone_id}"
}

output "public_domain" {
  value = "${var.public_domain}"
}