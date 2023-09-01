# create role assignment for remote-write
resource "restapi_object" "create_role_assignment" {
  provider = restapi.restapi_headers
  path     = "/api/${var.remote_write_role_assignment_operation}"
  data     = templatefile("${path.module}/templates/create_input.json", { OperatingEnvironment = var.remote_write_operating_environment, CloudEnvironment = var.remote_write_cloud_environment, managedIdentityObjectID = "xxxxxxxxx", TargetScope = "/subscriptions/xxxxxxxxx/resourceGroups/MA_test-promws_westeurope_managed/providers/Microsoft.Insights/dataCollectionRules/test-promws", TargetRole = var.remote_write_target_role })
}

