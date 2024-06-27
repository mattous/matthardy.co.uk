# Read me

Creates a static S3 website and updates cloudflare DNS to point the website in S3

## Cloudflare

Requirements: 

- domain must be registered in cloudflare
- add the cloudflare zone id for the domain to `terraform.tfvars` as `zone_id`
- create a cloudflare API key with write access to the domain
- export the key as an environment variable: `export CLOUDFLARE_API_TOKEN="YOUR KEY HERE"`
