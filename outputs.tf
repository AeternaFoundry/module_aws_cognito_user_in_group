output "cognito_user_in_groups_id" {
  description = "Map of id values across all cognito_user_in_groups, keyed the same as var.cognito_user_in_groups"
  value       = { for k, v in aws_cognito_user_in_group.cognito_user_in_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cognito_user_in_groups_group_name" {
  description = "Map of group_name values across all cognito_user_in_groups, keyed the same as var.cognito_user_in_groups"
  value       = { for k, v in aws_cognito_user_in_group.cognito_user_in_groups : k => v.group_name if v.group_name != null && length(v.group_name) > 0 }
}
output "cognito_user_in_groups_region" {
  description = "Map of region values across all cognito_user_in_groups, keyed the same as var.cognito_user_in_groups"
  value       = { for k, v in aws_cognito_user_in_group.cognito_user_in_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cognito_user_in_groups_user_pool_id" {
  description = "Map of user_pool_id values across all cognito_user_in_groups, keyed the same as var.cognito_user_in_groups"
  value       = { for k, v in aws_cognito_user_in_group.cognito_user_in_groups : k => v.user_pool_id if v.user_pool_id != null && length(v.user_pool_id) > 0 }
}
output "cognito_user_in_groups_username" {
  description = "Map of username values across all cognito_user_in_groups, keyed the same as var.cognito_user_in_groups"
  value       = { for k, v in aws_cognito_user_in_group.cognito_user_in_groups : k => v.username if v.username != null && length(v.username) > 0 }
}

