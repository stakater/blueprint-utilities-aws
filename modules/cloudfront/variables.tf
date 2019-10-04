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
#    http://www.apache.orsg/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
###############################################################################
variable "bucket-domain-name"  {}
variable "bucket-id"  {}
variable "domain-aliases" {
    type = "list"
}

variable "enabled" {
  default = true
}

variable "ipv6-enabled" {
    default = true
}

variable "comment" {
     type = "string"
     default = ""
}

variable "default-root-object" {
    type = "string"
    default = ""
}

variable "price-class" {
    type = "string"
    default = "PriceClass_All"
}

variable "tags" {
    type = "map"
    default = {
        "terraform-managed" = "true"
    }
}

variable "allowed-http-methods" {
    type = "list"
    default = ["GET","OPTIONS","HEAD"]
}

variable "cached-http-methods" {
    type = "list"
    default = ["GET","OPTIONS","HEAD"]
}

variable "should-forward-query-string" {
    default = false
}

variable "forward-cookies"  {
    type = "string"
    default = "none"
}

variable "viewer-protocol-policy" {
    type = "string"
    default = "allow-all"
}

variable "min-cache-ttl" {
    default = 0
}

variable "default-cache-ttl" {
    default = 86400
}

variable "max-cache-ttl" {
    default = 315356000
}

variable "restrict-locations" {
    type =  "list"
    default = []
}

variable "restriction-type" {
    type = "string"
    default = "none"
}

variable "cache-path-pattern" {
    type = "string"
    default = "/*"
}

variable "acm-certificate-arn" {
    type = "string"
    default = ""
}

variable "iam-certificate-id" {
    type = "string"
    default = ""
}

variable "cloudfront-default-certificate" {
    default = false
}

variable "minimum-protocol-version" {
    type = "string"
    default = "TLSv1.1_2016"
}

variable "ssl-support-method" {
    type = "string"
    default = "sni-only"
}

variable "forward-headers" {
    type = "list"
    default = ["Origin"]
}

variable "ordered_cache_behavior" {
    type = "map"
    default = {}
}