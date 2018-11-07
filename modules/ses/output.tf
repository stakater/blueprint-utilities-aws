output "domain_id" {
    value = "${aws_ses_domain_identity.ses_domain.id}"
}

output "domain_arn" {
    value = "${aws_ses_domain_identity.ses_domain.arn}"
}