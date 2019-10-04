###############################################################################
# Copyright 2016 Aurora Solutions
#
#    http://www.aurorasolutions.io
#
# Aurora Solutions is an innovative services and product company at
# the forefront of the software industry, with processes and practices
# involving Domain Driven Design(DDD), Agile methodologies to build
# scalable, secure, reliable and high performance products.
#
# Stakater is an Infrastructure-as-a-Code DevOps solution to automate the
# creation of web infrastructure stack on Amazon. Stakater is a collection
# of Blueprints; where each blueprint is an opinionated, reusable, tested,
# supported, documented, configurable, best-practices definition of a piece
# of infrastructure. Stakater is based on Docker, CoreOS, Terraform, Packer,
# Docker Compose, GoCD, Fleet, ETCD, and much more.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################
resource "aws_cloudfront_distribution" "cloudfront"{
    origin {
        domain_name = "${var.bucket-domain-name}"
        origin_id   = "${var.bucket-id}"
    }

    enabled             = "${var.enabled}"
    is_ipv6_enabled     = "${var.ipv6-enabled}"
    comment             = "${var.comment}"
    default_root_object = "${var.default-root-object}"

    aliases = "${var.domain-aliases}"

    default_cache_behavior = {
        allowed_methods  = "${var.allowed-http-methods}"
        cached_methods   = "${var.cached-http-methods}"
        target_origin_id = "${var.bucket-id}"

        forwarded_values {
          query_string = "${var.should-forward-query-string}"
          headers = "${var.forward-headers}"
          cookies {
            forward = "${var.forward-cookies}"
          }
        }
        viewer_protocol_policy = "${var.viewer-protocol-policy}"
        min_ttl                = "${var.min-cache-ttl}"
        default_ttl            = "${var.default-cache-ttl}"
        max_ttl                = "${var.max-cache-ttl}"

    }

    ordered_cache_behavior = "${var.ordered_cache_behavior}"

    price_class = "${var.price-class}"

    restrictions = {
        geo_restriction{
            locations = "${var.restrict-locations}"
            restriction_type = "${var.restriction-type}"
        }
    }

    viewer_certificate {
          acm_certificate_arn = "${var.acm-certificate-arn}"
          iam_certificate_id= "${var.iam-certificate-id}"
          cloudfront_default_certificate = "${var.cloudfront-default-certificate}"
          minimum_protocol_version = "${var.minimum-protocol-version}"
          ssl_support_method = "${var.ssl-support-method}"
    }
}