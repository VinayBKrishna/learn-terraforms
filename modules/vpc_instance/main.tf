resource "aws_route53_record" "this" {
  zone_id = var.zone_id
  name    = var.name
  type    = "NS"
  ttl     = "30"
  records = var.record
}