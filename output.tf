output "dns_domain" {
  value = "${var.region}.${terraform_remote_state.global.output.dns_domain}"
}

output "route53_zone_id" {
  value = "${aws_route53_zone.region.zone_id}"
}

output "route53_zone_ns" {
  value = "${join(",", aws_route53_zone.region.name_servers)}"
}
