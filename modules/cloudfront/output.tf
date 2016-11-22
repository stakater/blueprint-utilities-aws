output "id" {
  value = "${aws_cloudfront_distribution.s3_distribution.id}"
}
output "caller_reference" {
  value = "${aws_cloudfront_distribution.s3_distribution.caller_reference}"
}
output "status" {
  value = "${aws_cloudfront_distribution.s3_distribution.status}"
}
output "domain_name" {
  value = "${aws_cloudfront_distribution.s3_distribution.domain_name}"
}
output "hosted_zone_id" {
  value = "${aws_cloudfront_distribution.s3_distribution.hosted_zone_id}"
}
