variable "remote_write_cloud_environment" {
  type        = string
  description = "Type of cloud environment, if it is VNET type or EXT type. Allowed values - 'EXT' for External subscriptions, 'VNET' for VNet subscriptions"
}

variable "remote_write_operating_environment" {
  type        = string
  description = "Operating environment, either NPD or PRD. Allowed values - 'N' for non-production, 'P' for production subscription"
}

variable "remote_write_role_assignment_operation" {
  type        = string
  description = "Role assignment operation type, Allowed values - Create/delete"
}

variable "remote_write_target_role" {
  type        = string
  description = "Role which should be assigned to managed identity, allowed roles - https://github.com/sede-x/HyperAutomation/blob/main/Azure%40Shell/allowed_roles.csv"
}

variable "remote_write_token_scope" {
  type        = string
  description = "Scope for tokens that would be used to create api request. Refer URL for values - https://github.com/sede-x/HyperAutomation/blob/main/Azure%40Shell/MI_RoleAssignments_API.md#generating-access-token:~:text=Generating%20Access%20Token"
}