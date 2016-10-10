resource "aws_route53_zone" "region" {
  name = "${var.region}.${terraform_remote_state.global.output.dns_domain}"
}

resource "aws_route53_record" "ns" {
    zone_id = "${terraform_remote_state.global.output.route53_zone_id}"
    name = "${var.region}.${terraform_remote_state.global.output.dns_domain}"
    type = "NS"
    ttl = "30"
    records = [
      "${aws_route53_zone.region.name_servers.0}",
      "${aws_route53_zone.region.name_servers.1}",
      "${aws_route53_zone.region.name_servers.2}",
      "${aws_route53_zone.region.name_servers.3}"
    ]
}
