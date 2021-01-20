module "mlops" {
  source  = "../../../modules"
  #source  = "aztfmod/caf/azurerm"
  #version = "~> 0.4"

  current_landingzone_key  = var.landingzone.key
  tags                     = local.tags
  diagnostics              = local.diagnostics
  global_settings          = local.global_settings
  tfstates                 = local.tfstates
  tenant_id                = var.tenant_id
  logged_user_objectId     = var.logged_user_objectId
  logged_aad_app_objectId  = var.logged_aad_app_objectId
  resource_groups          = var.resource_groups
  keyvaults                = var.keyvaults
  keyvault_access_policies = var.keyvault_access_policies
  storage_accounts         = var.storage_accounts
  managed_identities       = var.managed_identities
  role_mapping             = var.role_mapping

  database = {
    machine_learning_workspaces = var.machine_learning_workspaces
    cosmos_dbs                  = var.cosmos_dbs
    app_config                  = var.app_config
  }

  compute = {
    azure_container_registries = var.azure_container_registries
  }

  webapp = {
    azurerm_application_insights  = var.azurerm_application_insights
    app_service_plans             = var.app_service_plans
    app_services                  = var.app_services
    function_apps                 = var.function_apps
  }

  remote_objects = {
    azuread_groups                   = local.remote.azuread_groups
    machine_learning_workspaces      = local.remote.machine_learning_workspaces
    managed_identities               = local.remote.managed_identities
    vnets                            = local.remote.vnets
    azurerm_firewalls                = local.remote.azurerm_firewalls
    virtual_wans                     = local.remote.virtual_wans
    private_dns                      = local.remote.private_dns
    application_gateways             = local.remote.application_gateways
    application_gateway_applications = local.remote.application_gateway_applications
    public_ip_addresses              = local.remote.public_ip_addresses
  }

   logic_app = {
    integration_service_environment = var.integration_service_environment
    logic_app_action_custom         = var.logic_app_action_custom
    logic_app_action_http           = var.logic_app_action_http
    logic_app_integration_account   = var.logic_app_integration_account
    logic_app_trigger_custom        = var.logic_app_trigger_custom
    logic_app_trigger_http_request  = var.logic_app_trigger_http_request
    logic_app_trigger_recurrence    = var.logic_app_trigger_recurrence
    logic_app_workflow              = var.logic_app_workflow
  }
}
