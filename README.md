# terraform-aws_region-module

This module is used for management of an AWS region data using Terraform.

## Argument Reference

* `region` - (Required) The AWS region.

## Attribute Reference

* `dns_domain` - The DNS domain for the region.
* `route53_zone_id` - The Route53 zone ID for the domain.
* `route53_zone_ns` - Comma seperated list of nameservers for the domain.
