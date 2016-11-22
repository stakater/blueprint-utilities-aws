variable "bucket_endpoint" {
  description = "bucket url or endpoint"
}
variable "origin_access_identity" {
}
variable "default_root_object" {
  description = "The object that you want CloudFront to return"
  default = "index.html"
}
variable "aliases" {
  description = "Extra CNAMEs if any"
  default = []
  type = "list"
}
variable "price_class" {

}
variable "enabled" {
  default = true
}
variable "acm_certificate_arn" {

}