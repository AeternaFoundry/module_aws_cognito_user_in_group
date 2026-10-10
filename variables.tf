variable "cognito_user_in_groups" {
  description = <<EOT
Map of cognito_user_in_groups, attributes below
Required:
    - group_name
    - user_pool_id
    - username
Optional:
    - region
EOT

  type = map(object({
    group_name   = string
    user_pool_id = string
    username     = string
    region       = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

