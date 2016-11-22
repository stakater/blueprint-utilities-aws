resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${var.bucket_endpoint}"
    origin_id   = "S3-${replace(var.bucket_endpoint, ".s3.amazon.com" ,"" )}" //following convention followed by aws console
  }

  enabled             = "${var.enabled}"
  default_root_object = "${var.default_root_object}"

  aliases = "${var.aliases}"

  price_class = "${var.price_class}"

  //use custom
  viewer_certificate {
    acm_certificate_arn = "${var.acm_certificate_arn}"
  }
  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "S3-${replace(var.bucket_endpoint, ".s3.amazon.com" ,"" )}" //following convention followed by aws console

    forwarded_values {
      query_string = false

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    min_ttl                = 0
    default_ttl            = 86400
    max_ttl                = 31536000
  }
  "restrictions" {
    "geo_restriction" {
      restriction_type = "none"
    }
  }
}