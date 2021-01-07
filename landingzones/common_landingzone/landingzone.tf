module "commonzone" {
  source  = "../../../modules"
  #version = "= 0.4.18"

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
  networking = {
    application_gateways                                    = var.application_gateways
    application_gateway_applications                        = var.application_gateway_applications
    vnets                                                   = var.vnets
    vnet_peerings                                           = var.vnet_peerings
    vhub_peerings                                           = var.vhub_peerings
    network_security_group_definition                       = var.network_security_group_definition
    azurerm_firewall_network_rule_collection_definition     = var.azurerm_firewall_network_rule_collection_definition
    azurerm_firewall_application_rule_collection_definition = var.azurerm_firewall_application_rule_collection_definition
    azurerm_firewall_nat_rule_collection_definition         = var.azurerm_firewall_nat_rule_collection_definition
    azurerm_firewalls                                       = var.azurerm_firewalls
    public_ip_addresses                                     = var.public_ip_addresses
    route_tables                                            = var.route_tables
    azurerm_routes                                          = var.azurerm_routes
    virtual_wans                                            = var.virtual_wans
    ddos_services                                           = var.ddos_services
    private_dns                                             = var.private_dns
  }
  compute = {
    virtual_machines           = var.virtual_machines
    bastion_hosts              = var.bastion_hosts
    azure_container_registries = var.azure_container_registries
  }
  
  managed_identities = var.managed_identities

  database = {
    databricks_workspaces = var.databricks_workspaces
    machine_learning_workspaces = var.machine_learning_workspaces
  }

  webapp = {
    app_services = var.app_services
    app_service_plans            = var.app_service_plans
    azurerm_application_insights = var.azurerm_application_insights
    function_apps = var.function_apps
  }

  data_factory = {
    data_factory                  = var.data_factory
    data_factory_trigger_schedule = var.data_factory_trigger_schedule
    data_factory_pipeline         = var.data_factory_pipeline
    datasets = {
      azure_blob       = var.dataset_blob_storage
      cosmosdb_sqlapi  = var.dataset_cosmosdb_sqlapi
      delimited_text   = var.dataset_delimited_text
      http             = var.dataset_http
      json             = var.dataset_json
      mysql            = var.dataset_mysql
      postgresql       = var.dataset_postgresql
      sql_server_table = var.dataset_sql_server_table
    }
    linked_services = {
      azure_blob_storage = var.linked_service_azure_blob_storage
    }
  }

  remote_objects = {
    azuread_groups                   = local.remote.azuread_groups
    managed_identities               = local.remote.managed_identities
    vnets                            = local.remote.vnets
    azurerm_firewalls                = local.remote.azurerm_firewalls
    virtual_wans                     = local.remote.virtual_wans
    private_dns                      = local.remote.private_dns
    application_gateways             = local.remote.application_gateways
    application_gateway_applications = local.remote.application_gateway_applications
    public_ip_addresses              = local.remote.public_ip_addresses
  }

}
