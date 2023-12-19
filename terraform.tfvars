region = "us-east-1"

vpc_cidr = "10.0.0.0/16"

enable_dns_support = "true"

enable_dns_hostnames = "true"

enable_classiclink = "false"

enable_classiclink_dns_support = "false"

preferred_number_of_public_subnets = 2

preferred_number_of_private_subnets = 4

environment = "Production"


ami = "ami-06aa3f7caf3a30282"

keypair = "Vir"

# Ensure to change this to your acccount number
account_no = "183540202232"

# master-username = "ojo"

db-password = "devops-account"

db-username     = "ojo"

tags = {
  Owner-Email     = "hammedakinwale35@gmail.com"
  Managed-By      = "terraform"
  Billing-Account = "1234567890"
} 