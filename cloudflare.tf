resource "cloudflare_record" "cname" {
  zone_id = var.zone_id
  name    = var.website_address
  value   = aws_s3_bucket.bucket.bucket_domain_name
  type    = "CNAME"
  proxied = true
}