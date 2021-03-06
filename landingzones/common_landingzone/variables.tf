# Map of the remote data state for lower level
variable lower_storage_account_name {}
variable lower_container_name {}
variable lower_resource_group_name {}

variable tfstate_storage_account_name {}
variable tfstate_container_name {}
variable tfstate_key {}
variable tfstate_resource_group_name {}

variable landingzone {}

variable tenant_id {}

variable global_settings {
  default = {}
}
variable rover_version {}
variable logged_user_objectId {
  default = null
}
variable logged_aad_app_objectId {
  default = null
}
variable tags {
  type    = map
  default = {}
}
variable diagnostics_definition {
  default = null
}
variable resource_groups {
  default = null
}
variable vnets {
  default = {}
}
variable virtual_wans {
  default = {}
}
variable public_ip_addresses {
  default = {}
}
variable vnet_peerings {
  default = {}
}
variable vhub_peerings {
  default = {}
}
variable azurerm_firewalls {
  default = {}
}
variable network_security_group_definition {
  default = null
}
variable route_tables {
  default = {}
}
variable azurerm_routes {
  default = {}
}
variable storage_accounts {
  default = {}
}
variable virtual_machines {
  default = {}
}
variable managed_identities {
  default = {}
}
variable azurerm_firewall_network_rule_collection_definition {
  default = {}
}
variable azurerm_firewall_application_rule_collection_definition {
  default = {}
}
variable azurerm_firewall_nat_rule_collection_definition {
  default = {}
}
variable azure_container_registries {
  default = {}
}
variable bastion_hosts {
  default = {}
}
variable ddos_services {
  default = {}
}
variable private_dns {
  default = {}
}
variable application_gateways {
  default = {}
}
variable application_gateway_applications {
  default = {}
}
variable keyvaults {
  default = {}
}
variable keyvault_access_policies {
  default = {}
}

variable databricks_workspaces {
  default = {}
}

variable app_services {
  default = {}
}

variable app_service_plans {
  default = {}
}

variable azurerm_application_insights {
  default = {}
}

variable machine_learning_workspaces {
  default = {}
}

variable function_apps {
  default = {}
}

variable linked_service_azure_blob_storage {
  default = {}
}

variable data_factory {
  default = {}
}

variable data_factory_trigger_schedule {
  default = {}
}

variable data_factory_pipeline {
  default = {}
}

variable dataset_blob_storage {
  default = {}
}

variable dataset_cosmosdb_sqlapi {
  default = {}
}

variable dataset_delimited_text {
  default = {}
}

variable dataset_http {
  default = {}
}

variable dataset_json {
  default = {}
}

variable dataset_mysql {
  default = {}
}

variable dataset_postgresql {
  default = {}
}

variable dataset_sql_server_table {
  default = {}
}
