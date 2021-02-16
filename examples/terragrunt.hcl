include {
    path = find_in_parent_folders("aws.hcl")
}

locals {
    aws_vars = read_terragrunt_config(find_in_parent_folders("aws.hcl"))
    account_id = local.aws_vars.locals.account_id
}

terraform {
    source = "../"
}

inputs = {
    enabled = true
    name = "${uuid()}"
    tags = {
        foo = "bar"
    }
    trusted_cross_account_ids = [local.account_id]
}