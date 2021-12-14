module "website" {
  source         = "genstackio/website/aws"
  version        = "0.1.53"
  name           = var.name
  bucket_name    = var.bucket_name
  zone           = var.dns_zone
  dns            = var.dns
  geolocations   = []
  bucket_cors    = true
  providers      = {
    aws     = aws
    aws.acm = aws.acm
  }
}
